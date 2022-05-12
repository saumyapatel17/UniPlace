import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PagesHeader extends StatelessWidget {
  final String title;
  final Function() onTap;

  const PagesHeader({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            offset: Offset(4.0, 4.0),
            blurRadius: 10,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
