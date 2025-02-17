import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class helpline extends StatefulWidget {
  @override
  _helplineState createState() => _helplineState();
}

class _helplineState extends State<helpline> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // CheckConnectivity.isConnected().then(
    //   (isConnected) {
    //     if (!isConnected) {
    //       CheckConnectivity.showInternetDialog(context);
    //     }
    //   },
    // );
  }

  Future<void> launchCaller(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Helpcenters",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.green[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('helpline')
                .orderBy("state")
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData)
                return Center(
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green)),
                );

              return Expanded(
                  child: ListView(
                children: snapshot.data!.docs.map((document) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          launchCaller(document['number'].toString());
                        },
                        title: Row(
                          children: <Widget>[
                            Text(
                              document['state'].toString(),
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.call,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    document['number'].toString(),
                                    style: TextStyle(
                                        color: Colors.blueAccent[200]),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider()
                    ],
                  );
                }).toList(),
              ));
            },
          )
        ],
      ),
    );
  }
}
