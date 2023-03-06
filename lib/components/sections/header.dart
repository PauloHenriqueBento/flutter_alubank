
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(103, 99, 234, 1),
              Color.fromRGBO(155, 105, 254, 1),
              Color.fromRGBO(195, 107, 255, 1),
            ]
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 80, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                // Text(
                //   '\$1000.00',
                //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                // ),
                Text.rich(TextSpan(
                    text: '\$',
                    style: TextStyle(fontSize: 16, color: Colors.pink),
                    children: <TextSpan>[
                      TextSpan(
                          text: '1000.00',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                    ])),
                Text(
                  'Balanço disponível',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 42,
            )
          ],
        ),
      ),
    );
  }
}
