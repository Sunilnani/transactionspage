import 'package:flutter/material.dart';

import 'all_income.dart';
import 'main.dart';
class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  List<String> flags=["img/europe.png","img/us.png","img/canada.png","img/aus.png","img/swiss.png","img/mexico.png","img/russia.png",];
  List<String>countrynames=["EUR","USD","CAD","AUD","CHF","MXN","RUB",];
  List<String>countrydollars=["EURO","US Dollar","Canadian Dollar","Australian Dollar","Swiss Franc","Mexican Peso","Russian Rubie",];
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
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal:60.0),
            child: Text("Currency",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),

        ),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: flags.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                        return CurrencySelection(
                          flagimage: flags[index],
                          countryname: countrynames[index],
                          countrydollar: countrydollars[index],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 65,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:22.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                child: Image.asset("img/ind1.png",height: 20,width: 20,),
                                backgroundColor: Colors.black12,
                              ),
                              SizedBox(width: 5,),
                              Text("Ind",style: TextStyle(color: Color(0xFF828282),fontWeight: FontWeight.w400,fontSize: 14),),
                              SizedBox(width: 5,),
                              Text("Rupees",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),)
                            ],
                          ),
                          CircleAvatar(
                            radius: 15,
                            child: Icon(Icons.verified_outlined,size: 15,),
                            backgroundColor: Color(0xFFF1FAF5),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 50,
                        width: 100,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.arrow_forward,size: 18,),
                              SizedBox(width: 10,),
                              Text('Saved', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
                            ],
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(28)),
                          elevation: 5,
                        ),
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

class CurrencySelection extends StatelessWidget {
  const CurrencySelection({
    this.flagimage,
    this.countryname,
    this.countrydollar,
    Key key,
  }) : super(key: key);
  final String flagimage;
  final String countryname;
  final String countrydollar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:22.0),
          child: Row(
           children: [
           CircleAvatar(
           radius: 22,
           child: Image.asset(flagimage,height: 20,width: 20,),
           backgroundColor: Colors.black12,
           ),
           SizedBox(width: 5,),
          Text(countryname,style: TextStyle(color: Color(0xFF828282),fontWeight: FontWeight.w400,fontSize: 14),),
          SizedBox(width: 5,),
           Text(countrydollar,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),)
    ],
    ),
    ),
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}
