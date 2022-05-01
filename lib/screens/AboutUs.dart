import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3),
            /* Scrollbar(
              hoverThickness: 30.0,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => MyItem(index),
              ),
            ),*/
            const Positioned(
              bottom: -60.0,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.cyan,
                //  backgroundImage:
                // NetworkImage('https://images.app.goo.gl/vtaQBHofBPumiw2P7'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        const ListTile(
          title: Center(
              child: Text(
            'About Us',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w600),
          )),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        ),
        const ListTile(
          title: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Center(child: Text('Data')),
        )
      ],
    );
  }
}
