import 'package:farmer/widget/changeTheme.dart';
import 'package:flutter/material.dart';

/*class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
      title: Text("Upaja"),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)), ChangeThemeButtonWidget()],
    );
  }
}
*/

AppBar myAppBar() {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {},
    ),
    title: Text("Upaja"),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ChangeThemeButtonWidget()
    ],
  );
}
