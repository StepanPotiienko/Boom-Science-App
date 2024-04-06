import 'package:flutter/material.dart';

class SideMenuDrawer extends StatelessWidget {
  const SideMenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: true
                      ? NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/04/13/06/40/mars-1326108_1280.jpg")
                      : AssetImage("media/no_data.jpg") as ImageProvider,
                )),
            child: null,
          ),
          const MenuElementsList(),
        ],
      ),
    );
  }
}

class MenuElementsList extends StatelessWidget {
  const MenuElementsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      MenuElementTile(
        title: "Home",
        leadingIcon: Icons.home,
      ),
      MenuElementTile(
        title: "Saved",
        leadingIcon: Icons.favorite,
      ),
    ]);
  }
}

class MenuElementTile extends StatelessWidget {
  const MenuElementTile({
    super.key,
    required this.title,
    required this.leadingIcon,
  });

  final IconData leadingIcon;

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      onTap: () {
        print("Hallooo.");
      },
    );
  }
}
