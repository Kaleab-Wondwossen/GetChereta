import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  final int index;
  final Function(int)? onIndexChanged;

  const MyNavBar({super.key, required this.index, this.onIndexChanged});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    Color unselectedColor = const Color.fromRGBO(56, 103, 93, 1);
    Color selectedColor = Colors.black;

    return BottomNavigationBar(
      currentIndex: widget.index,
      unselectedItemColor: unselectedColor,
      selectedItemColor: selectedColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.toc_outlined),
          label: 'toDo',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_copy),
          label: 'Files',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notes),
          label: 'Notes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        if (widget.index != index) {
          if (widget.onIndexChanged != null) {
            widget.onIndexChanged!(index);
          }
          switch (index) {
            case 0:
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => const HomePage()));
              break;
            case 1:
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => const Events()));
              break;
            case 2:
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => const ChatPage()));
              break;
            case 3:
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => const ChatScreen()));
              break;
            case 4:
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => const Profile()));
              break;
          }
        }
      },
    );
  }
}
