import 'package:design_poc/app/constants/app_colors.dart';
import 'package:design_poc/app/widgets/app_add_new_field.dart';
import 'package:design_poc/app/widgets/app_bottom_button.dart';
import 'package:design_poc/app/widgets/app_button.dart';
import 'package:design_poc/app/widgets/app_search_textfield.dart';
import 'package:design_poc/app/widgets/app_success_dialog.dart';
import 'package:design_poc/app/widgets/app_text.dart';
import 'package:design_poc/app/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class NewContactPage extends StatefulWidget {
  const NewContactPage({Key? key}) : super(key: key);

  @override
  _NewContactPagrState createState() => _NewContactPagrState();
}

class _NewContactPagrState extends State<NewContactPage> {
  final FocusNode _txtCompanyFocus = FocusNode();

  Widget searchCompanies = Container(
    margin: EdgeInsets.only(top: 40),
    child: Dialog(
      alignment: Alignment.topCenter,
      backgroundColor: Colors.white,
      elevation: 20,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: AppSearchTextField(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
            text: "Criar contato", fontSize: 16, fontWeight: FontWeight.w300),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(
              Icons.close,
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
                  text: 'Salvar',
                  fontColor: AppColors.mainRed,
                  fontWeight: FontWeight.w700,
                )),
          )
        ],
      ),
      bottomSheet: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppBottomButton(
                buttonText: 'Digitalizar cartão',
                iconPath: "assets/images/ic_card.png"),
            AppBottomButton(
                buttonText: 'Importar', iconPath: "assets/images/ic_user.png"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, bottom: 85, top: 10),
            child: Column(
              children: [
                AppTextfield(
                  labelName: 'Nome',
                  controller: TextEditingController(text: 'Daril'),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Apelido',
                  controller: TextEditingController(text: 'Dari'),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Telefone',
                  controller: TextEditingController(text: '+55 91234-5984'),
                  onTapTextField: () {},
                ),
                AppAddNewField(
                    addFieldText: 'Adicionar número de telefone',
                    addNewFieldCallback: () {}),
                AppTextfield(
                  labelName: 'E-mail',
                  controller: TextEditingController(text: 'example@email.com'),
                  onTapTextField: () {},
                ),
                AppAddNewField(
                    addFieldText: 'Adicionar e-mail',
                    addNewFieldCallback: () {}),
                AppTextfield(
                  labelName: 'Idioma',
                  controller: TextEditingController(),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Empresas',
                  controller: TextEditingController(),
                  onTapTextField: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => searchCompanies);
                  },
                ),
                AppAddNewField(
                  addFieldText: 'Adicionar empresa',
                  addNewFieldCallback: () {},
                ),
                AppTextfield(
                  labelName: 'Setor de atividade',
                  controller: TextEditingController(),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Cargo',
                  controller: TextEditingController(),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Escritório',
                  controller: TextEditingController(),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Áreas de interesse',
                  controller: TextEditingController(),
                  onTapTextField: () {},
                ),
                AppTextfield(
                  labelName: 'Contato de',
                  controller: TextEditingController(),
                  onTapTextField: () {},
                ),
                Container(
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AppBottomButton(
                          buttonText: 'Digitalizar cartão',
                          iconPath: "assets/images/ic_card.png"),
                      AppBottomButton(
                          buttonText: 'Importar',
                          iconPath: "assets/images/ic_user.png"),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
