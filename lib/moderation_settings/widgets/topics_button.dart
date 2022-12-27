import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopicButton extends StatelessWidget {
  final int selectedIndex;
  final int myIndex;
  final Function onClick;
  final String selectedIcon;
  final String keyAns;
  final String selectedBefore;

  const TopicButton(
      {super.key, required this.selectedIndex,
      required this.myIndex,
      required this.onClick,
      required this.selectedIcon,
      required this.keyAns,
      required this.selectedBefore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 90.h,
        height: 10.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: (selectedIndex == myIndex || selectedBefore == keyAns)
                  ? Colors.blueGrey.shade100
                  : Colors.grey.shade50,
              shadowColor: Colors.grey.shade50,
              side: const BorderSide(width: 1, color: Colors.transparent)),
          child: ListTile(
            leading: Image.asset(
              selectedIcon,
              width: 10.w,
            ),
            title: Text(keyAns),
            trailing: Icon(
              Icons.check,
              color: (selectedIndex == myIndex || selectedBefore == keyAns)
                  ? Colors.blue
                  : Colors.transparent,
            ),
          ),
          onPressed: () => onClick(myIndex, keyAns),
        ),
      ),
    );
    
  }
}
