
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trainyourplane/constants/color_constant.dart';

class BottomnavigationTYP extends StatefulWidget {
  @override
  _BottomnavigationTYPState createState() => _BottomnavigationTYPState();
}

class _BottomnavigationTYPState extends State<BottomnavigationTYP> {
  int _selectedIndex = 0;

  var bottomTextStyle = GoogleFonts.inter(
    fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });

    // if(index==1){
    //   Navigator.pushNamed(context, '/about');
    // }
    switch(_selectedIndex){
      case 0:{
        Navigator.pushNamed(context, '/home');
        print(_selectedIndex);
        break;
      }
      case 1:{
        Navigator.pushNamed(context, '/about');
        break;
      }

      case 2:{
        Navigator.pushNamed(context, '/videos');

        break;
      }

      case 3:{
        Navigator.pushNamed(context, '/testimonials');
        break;
      }


      case 4:{
        Navigator.pushNamed(context, '/contact_us');
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 64,
      decoration: BoxDecoration(
        color: mdarkestblue,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0,5)
          )
        ],
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(24),
          //   topRight: Radius.circular(24),
          // ),
      ),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ?new SvgPicture.asset('assets/svg/home.svg')
              :new SvgPicture.asset('assets/svg/home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ?new SvgPicture.asset('assets/svg/about_us_colored.svg')
              :new SvgPicture.asset('assets/svg/about_us.svg'),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ?new SvgPicture.asset('assets/svg/videos_colored.svg')
              :new SvgPicture.asset('assets/svg/videos.svg'),
          label: 'Videos',
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 3
              ?new SvgPicture.asset('assets/svg/testimnonails_colored.svg')
              :new SvgPicture.asset('assets/svg/testimonails.svg'),
          label: 'Testimonials',
        ),

        BottomNavigationBarItem(
          icon: _selectedIndex == 5
              ?new SvgPicture.asset('assets/svg/about_us_colored.svg')
              :new SvgPicture.asset('assets/svg/about_us.svg'),
          label: 'Contact Us',
        ),
      ],
        // selectedLabelStyle: bottomTextStyle,
        // currentIndex: _selectedIndex,
        selectedItemColor: mcolorash,
        unselectedItemColor: mcolorash,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        // showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
