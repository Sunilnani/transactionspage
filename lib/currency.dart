import 'package:flutter/material.dart';
import 'main.dart';
class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  List<String> flags=["img/europe.png","img/us.png","img/canada.png","img/aus.png","img/swiss.png","img/mexico.png","img/russia.png","img/ind1.png"];
  List<String>countrynames=["EUR","USD","CAD","AUD","CHF","MXN","RUB","Ind"];
  List<String>countrydollars=["EURO","US Dollar","Canadian Dollar","Australian Dollar","Swiss Franc","Mexican Peso","Russian Rubie","Rupees"];
  String    countryname = "INR";
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
                  ListView.separated(
                      itemCount: countrynames.length,
                      shrinkWrap: true,
                      itemBuilder: (context , index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              countryname = countrydollars[index];
                            });
                          },
                          child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.blueGrey[50],
                                radius: 22,
                                child: Image.asset(flags[index] ,height: 25,width: 25,),
                                // backgroundImage: AssetImage(countryFlag[index]),

                              ),
                              title: Row(
                                children: [
                                  Text(countrydollars[index], style: TextStyle(color: Colors.grey , fontSize: 13),),
                                  SizedBox(width: 10,),
                                  Text(countrynames[index],style: TextStyle(color: Colors.black , fontSize: 14), ),
                                ],
                              ),
                              trailing:  CircleAvatar(
                                radius: 18,
                                backgroundColor:   countryname== countrydollars[index] ?Color(0xffd8f2e3) : Colors.white,
                                child: Icon(Icons.verified_outlined , size: 18, color: countryname== countrydollars[index] ?Colors.green: Colors.white,),
                              )

                          ),

                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 20,
                        );
                      }),
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
