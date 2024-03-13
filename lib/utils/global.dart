import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Global {
  static PageController pageController = PageController();

  static int currentPageIndex = 0;

  static Color textColor = Color(0xffffffff);
  static Color bgColor = Color(0xff0475ff);
  static Color text1 = Color(0xffb0b0b0);
  static Color pdfTop = Color(0xff353743);

  static ImagePicker picker = ImagePicker();

  static String name = "";
  static String email = "";
  static String number = "";
  static String address1 = "";
  static String address2 = "";
  static String address3 = "";
  static String course = "";
  static String school = "";
  static String result = "";
  static String pass = "";
  static String r_name = "";
  static String designation = "";
  static String institute = "";
  static String dob = "";
  static String nationality = "";
  static String career = "";
  static String currentdes = "";
  static String p_title = "";
  static String roles = "";
  static String technologi = "";
  static String p_description = "";
  static String achievement1 = "";
  static String achievement2 = "";
  static String skills1 = "";
  static String skills2 = "";
  static String compny = "";
  static String roles1 = "";
  static String schoole = "";
  static String botton = "";
  static String dis = "";
  static String date = "";
  static String city = "";
  static String? imagePath = "";

  static TextEditingController namec = TextEditingController();
  static TextEditingController emailc = TextEditingController();
  static TextEditingController numberc = TextEditingController();
  static TextEditingController address1c = TextEditingController();
  static TextEditingController address2c = TextEditingController();
  static TextEditingController address3c = TextEditingController();
  static TextEditingController coursec = TextEditingController();
  static TextEditingController schoolc = TextEditingController();
  static TextEditingController resultc = TextEditingController();
  static TextEditingController passc = TextEditingController();
  static TextEditingController r_namec = TextEditingController();
  static TextEditingController designationc = TextEditingController();
  static TextEditingController institutec = TextEditingController();
  static TextEditingController dobc = TextEditingController();
  static TextEditingController nationalityc = TextEditingController();
  static TextEditingController careerc = TextEditingController();
  static TextEditingController currentdesc = TextEditingController();
  static TextEditingController p_titlec = TextEditingController();
  static TextEditingController achievement1c = TextEditingController();
  static TextEditingController achievement2c = TextEditingController();
  static TextEditingController skills1c = TextEditingController();
  static TextEditingController skills2c = TextEditingController();
  static TextEditingController compnyc = TextEditingController();
  static TextEditingController roles1c = TextEditingController();
  static TextEditingController schoolec = TextEditingController();
  static TextEditingController rolesc = TextEditingController();
  static TextEditingController technologic = TextEditingController();
  static TextEditingController p_descriptionc = TextEditingController();

  static bool gujarati = false;
  static bool hindi = false;
  static bool english = false;
  static bool c_program = false;
  static bool c_plus = false;
  static bool flutter = false;

  static TextStyle poppins18 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
  );

  static TextStyle poppins18black = GoogleFonts.getFont(
    'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Color(0xff000000).withOpacity(.40),
  );

  static TextStyle poppins14 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
  );

  static TextStyle poppins14blue = GoogleFonts.getFont(
    'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.blue,
  );

  static TextStyle poppins25 = GoogleFonts.getFont(
    'Poppins',
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: Color(0xffFFFFFF),
  );
}
