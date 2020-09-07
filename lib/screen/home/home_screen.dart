import 'package:agorartm/pages/root_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:agorartm/constants.dart';
import 'package:agorartm/screen/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
        //onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          //icon: Icons.person,
          icon: SvgPicture.asset(
            "assets/icons/user.svg",
            color: kTextColor,
          ),
          // onPressed: () {},
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RootApp()),
          ),
          //  onPressed: () => Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                   builder: (context) => DetailsScreen(
          //                     product: products[index],
          //                   ),
          //                 )),
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
