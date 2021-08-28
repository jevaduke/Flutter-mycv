import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          title: Text(
            "Jeva's Scrapbook",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.blueGrey[900],
                child: const Center(
                    child: Text(
                  "Hi I'm Jeva\nI'm a developer",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 800,
                color: Colors.lightBlue[900],
                child: Center(
                  child: Text(
                    "\t\tAbout me,\n\t\t\tI'm an Enthusiastic learner who learn in a short span of time," +
                        "I do learned technologies to make help for others make their reach high and manage to achieve their goal in a best way." +
                        "So i do provide many solutions to make you feel happy." +
                        "\n\n\t\tContribution:\n\t\t\tI had contributed in many react and flutter projects. some are apps to make the retail shops to grow their business more." +
                        "Making a complete overview of the project of the Ui in Adobe XD for making the customer feel like to choose the nesssive needs" +
                        "and providing quality of the service to the user." +
                        "\n\n\t\tLanguages known:\n\t\t\-Flutter\n\t\t\-HTML\n\t\t\-css\n\t\t\-JavaScript\n\t\t\-Python\n\t\t\-Firebase\n\t\t\-MongoDB\n\t\t\-Heroku" +
                        "\n\n\t\tGet in touch,\n\t\tYou can Get in contact by the contact details provided in the menu.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: const Text('For Contact'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ]),
        ));
  }
}

class Contact extends StatefulWidget {
  Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    Future<void>? _launched;
    Future<void> _firstURL(String url) async {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: false,
          forceWebView: false,
          headers: <String, String>{'my_header_key': 'my_header_value'},
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text(
          "Contact",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ignore: deprecated_member_use
                RaisedButton(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  onPressed: () => setState(() {
                    _launched =
                        _firstURL("https://www.linkedin.com/in/jeva-vignesh/");
                  }),
                  child: Text(
                    'You can contact me \nby LinkedIn',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.lightBlue[900],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
