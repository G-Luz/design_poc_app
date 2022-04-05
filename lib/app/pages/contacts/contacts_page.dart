import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/routes.dart';
import 'package:design_poc/app/widgets/app_action_bar.dart';
import 'package:design_poc/app/widgets/app_contact_filter.dart';
import 'package:design_poc/app/widgets/app_drawer.dart';
import 'package:design_poc/app/widgets/app_floating_button.dart';
import 'package:design_poc/app/widgets/app_search_textfield.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isAllContacts = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppActionBar(scaffoldKey: _scaffoldKey),
        endDrawer: const AppDrawer(),
        floatingActionButton: AppFloatingButton(onPressedCallback: () {
          Navigator.pushNamed(context, Routes.newContact);
        }),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(text: 'Contactos', fontSize: 25),
                    AppContactFilter(
                        allContacts: isAllContacts,
                        changeFilterCallback: () {
                          setState(() {
                            if (isAllContacts) {
                              isAllContacts = false;
                            } else {
                              isAllContacts = true;
                            }
                          });
                        })
                  ],
                ),
              ),
              Container(
                child: TabBar(
                  tabs: [
                    Tab(
                        child: AppText(
                      text: 'Pessoas',
                      fontWeight: FontWeight.w700,
                    )),
                    Tab(
                        child: AppText(
                      text: 'Empresas',
                      fontWeight: FontWeight.w700,
                    )),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 40,
                          margin: EdgeInsets.only(top: 15, bottom: 30),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const AppSearchTextField(),
                        ),
                        Expanded(
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.contactDetails);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AppText(
                                            text: "Contact name",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                          const SizedBox(height: 2),
                                          AppText(
                                            text: "Company",
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontColor: Colors.grey.shade400,
                                          )
                                        ]),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    Container(
                      child: const Center(child: Text("Empresas")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
