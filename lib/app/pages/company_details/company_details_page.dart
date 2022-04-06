import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/widgets/app_actions.dart';
import 'package:design_poc/app/widgets/app_success_dialog.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:design_poc/app/widgets/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:design_poc/app/routes.dart';
import 'package:design_poc/app/widgets/app_search_textfield.dart';

class CompanyDetailsPage extends StatefulWidget {
  const CompanyDetailsPage({Key? key}) : super(key: key);

  @override
  _CompanyDetailsPageState createState() => _CompanyDetailsPageState();
}

class _CompanyDetailsPageState extends State<CompanyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
            text: "Detalhe de empresa",
            fontSize: 16,
            fontWeight: FontWeight.w300),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              color: AppColors.mainRed,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () {
              AppSucessDialog.show(context);
            },
            child: Container(
                margin: EdgeInsets.only(right: 15),
                alignment: Alignment.center,
                child: AppText(
                  text: 'Editar',
                  fontColor: AppColors.mainRed,
                  fontWeight: FontWeight.w700,
                )),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: DefaultTabController(
          length: 3,  //NUMERO DE TABS
          child: NestedScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: "Teixeira Duarte, S.A.",
                              fontSize: 27,
                              fontWeight: FontWeight.w400,
                            ),
                            AppText(
                              text: "Designação Social",
                              fontColor: Colors.grey.shade400,
                              fontSize: 18,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppActions(
                              iconPath: 'assets/images/ic_send_email.png',
                              onTapCallback: () {}),
                          AppActions(
                              iconPath: 'assets/images/ic_phone_call.png',
                              onTapCallback: () {}),
                          AppActions(
                              iconPath: 'assets/images/ic_sms.png',
                              onTapCallback: () {}),
                          AppActions(
                              iconPath: 'assets/images/ic_whatsapp.png',
                              onTapCallback: () {}),
                        ],
                      ),
                      TabBar(
                        tabs: [
                          Tab(
                              child: AppText(
                                text: 'Sobre',
                                fontWeight: FontWeight.w700,
                              )),
                          Tab(
                              child: AppText(
                                text: 'Atividades',
                                fontWeight: FontWeight.w700,
                              )),
                          Tab(
                              child: AppText(
                                text: 'Contactos',
                                fontWeight: FontWeight.w700,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: [
                ListView(
                  children: [
                    AppTextfield(
                      labelName: 'Telefone',
                      controller: TextEditingController(text: '+12 34567-8901'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'E-mail',
                      controller:
                      TextEditingController(text: 'teste@email.com'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'Pais',
                      controller: TextEditingController(text: 'Brasil'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'Empresa(s)',
                      controller:
                      TextEditingController(text: 'JTD - Energias LTDA'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'Cargo',
                      controller: TextEditingController(text: 'Consultor'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'Contactos de',
                      controller: TextEditingController(text: 'DMC'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'Nome',
                      controller: TextEditingController(text: 'C. name'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                    AppTextfield(
                      labelName: 'Tipo Cliente',
                      controller:
                      TextEditingController(text: 'Cliente potencial'),
                      isEnable: false,
                      onTapTextField: () {},
                    ),
                  ],
                ),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade200),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)),
                            ),
                          ),
                          // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          //     EdgeInsets.symmetric(vertical: 10)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, color: AppColors.mainRed),
                            AppText(
                              text: 'Adicionar Nota',
                              fontColor: AppColors.mainRed,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // FixedTimeline.tileBuilder(
                    //   builder: TimelineTileBuilder.connectedFromStyle(
                    //       firstConnectorStyle: ConnectorStyle.transparent,
                    //       lastConnectorStyle: ConnectorStyle.transparent,
                    //       connectionDirection: ConnectionDirection.after,
                    //       connectorStyleBuilder: (context, index) =>
                    //           ConnectorStyle.dashedLine,
                    //       indicatorStyleBuilder: (context, index) {
                    //         return IndicatorStyle.dot;
                    //       },
                    //       itemExtent: 80,
                    //       itemCount: 5,
                    //       // contentsAlign: ContentsAlign.reverse,
                    //       indicatorPositionBuilder: (context, index) {
                    //         return 0.1;
                    //       },
                    //       contentsBuilder: (context, index) {
                    //         return Container(
                    //           padding: EdgeInsets.only(top: 30, left: 10),
                    //           child: Column(
                    //             children: [
                    //               Text("Adicionada uma nova nota"),
                    //             ],
                    //           ),
                    //         );
                    //       }),
                    // )

                    // Timeline.tileBuilder(
                    //   scrollDirection: Axis.vertical,
                    //   shrinkWrap: true,
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   builder: TimelineTileBuilder.fromStyle(
                    //       connectorStyle: ConnectorStyle.dashedLine,
                    //       contentsAlign: ContentsAlign.basic,
                    //       itemCount: 10,
                    //       contentsBuilder: (context, index) {
                    //         return Text("viadao");
                    //       }),
                    // )

                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80.0,
                              child: TimelineNode(
                                indicator: Container(
                                  height: 35,
                                  margin: EdgeInsets.zero,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        "assets/images/ic_task.png"),
                                  ),
                                ),
                                startConnector: index == 0
                                    ? const DashedLineConnector(
                                  color: Colors.transparent,
                                )
                                    : DashedLineConnector(
                                    color: Colors.grey.shade400),
                                endConnector: DashedLineConnector(
                                    color: Colors.grey.shade400),
                              ),
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
                ListView(
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
                ), //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
