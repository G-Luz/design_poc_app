import 'package:design_poc/app/pages/contact_details/contact_details_page.dart';
import 'package:design_poc/app/pages/company_details/company_details_page.dart';
import 'package:design_poc/app/pages/contacts/contacts_page.dart';
import 'package:design_poc/app/pages/home/home_page.dart';
import 'package:design_poc/app/pages/login/login_page.dart';
import 'package:design_poc/app/pages/new_contact/new_contact_page.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  Routes._();

  static const String initialRoute = "/";
  static const String home = "/homePage";
  static const String contacts = "/contacts";
  static const String newContact = "/newContact";
  static const String contactDetails = "/contactDetails";
  static const String companyDetails = "/companyDetails";

  static final routes = <String, WidgetBuilder>{
    initialRoute: (BuildContext context) => const LoginPage(),
    home: (BuildContext context) => const HomePage(),
    contacts: (BuildContext context) => const ContactsPage(),
    newContact: (BuildContext context) => const NewContactPage(),
    contactDetails: (BuildContext context) => const ContactDetailsPage(),
    companyDetails: (BuildContext context) => const CompanyDetailsPage(),
  };
}
