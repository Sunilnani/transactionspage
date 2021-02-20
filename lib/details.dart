import 'package:flutter/material.dart';

import 'main.dart';
class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<String> title=["Title","Amount","Transaction type","Tag","When","Note","Created At"];
  List<String>subtitle=["CashOffer - Payme","\$30","Income","Entertainment","Sunday, 18 Dec 8:30 AM","I got this amount from payme for recharge","jan 11, 2021, 11:30 AM"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back),color: Colors.black, onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(
                ),
              ),
            );
          }
          ),
          title: Align(
            alignment: Alignment.center,
              child: Text("Details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
          ),

          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.delete_outline_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              icon: Icon(
                Icons.share_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: ListView.builder(shrinkWrap: true,
                      itemCount: title.length,
                      scrollDirection: Axis.vertical,
                      physics:NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                        return Transaction_Details(
                          title: title[index],
                          sub: subtitle[index],
                        );
                        }
                    ),
                  ),
                Align(
                 alignment: Alignment.bottomRight,
                 child: SizedBox(
                   height: 50,
                   width: 100,
                   child: RaisedButton(
                     onPressed: () {},
                     child: Row(
                       children: [
                         Icon(Icons.edit,size: 18,),
                         SizedBox(width: 10,),
                         Text('Edit', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                       ],
                     ),
                    color: Colors.blue,
                    textColor: Colors.white,
                     shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(28)),
                     elevation: 5,
              ),
                 ),
            )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Transaction_Details extends StatelessWidget {
  const Transaction_Details({
    this.title,
    this.sub,
    Key key,
  }) : super(key: key);
  final String title;
  final String sub;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Row(
    children: [
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25,),
        Text(title,style: TextStyle(color: Color(0xFF828282),fontWeight: FontWeight.w400,fontSize: 12),),
        SizedBox(height: 5,),
        Text(sub,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),
      ],
    )
    ],
    ),
        SizedBox(height: 20,)
      ],
    );
  }
}
