import 'package:flutter/material.dart';
import 'package:flutter_transactions/all_expenses.dart';
import 'all_income.dart';
import 'currency.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<IconData> icons =[Icons.computer,Icons.local_pizza_outlined,Icons.all_inclusive_outlined,Icons.train_outlined];
  List<String> titles=["Cashback Offer","Cheesy Pizza","Freelancing","Metro Railway"];
  List<String> subtitles=["Entertainment","Transportation","Transportation","Journey"];
  List<String> money=["+\$30","-\$30","+\$1300","-\$30"];
  List<String>dates=["oct 30, 2021","oct 30, 2021","oct 29,2021","oct 28, 2021"];
  List<Color>colors=[Color(0xFF6FCF97),Color(0xFFEB5757),Color(0xFF6FCF97),Color(0xFFEB5757)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Container(
            color: Color(0xFFE5E5E5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Color(0xFFFFFFFF),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("Dashboard",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                              SizedBox(width: 10,),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.lightbulb_outline_sharp),
                              SizedBox(width: 10,),
                              //Icon(Icons.more_vert)
                              PopupMenuButton(
                                icon: Icon(Icons.more_vert),
                                  itemBuilder:(BuildContext context)=> <PopupMenuEntry>[
                                    PopupMenuItem(
                                        child:ListTile(
                                          title: Text("Settings",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                        )
                                    ),
                                    PopupMenuItem(
                                        child:ListTile(
                                          title: Text("about",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                                        )
                                    ),
                                  ]
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFFFFFFF)
                    ),
                    child: Container(
                      width:335,
                      padding: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
                      child: Column(
                        children: [
                          Text("TOTAL BALANCE",style: TextStyle(color: Color(0xFF828282),fontWeight: FontWeight.w600,fontSize: 10),),
                          SizedBox(height: 10,),
                          Text("\$23,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => AllIncome(
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                              color: Color(0xFFFFFFFF)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment:Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 12,
                                      backgroundColor: Color(0xFFF1FAF5),
                                      child: Icon(Icons.arrow_downward_outlined,color: Color(0xFF6FCF97),size: 15,),
                                    ),
                                ),
                                SizedBox(height: 10,),
                                Text("TOTAL INCOME",style: TextStyle(color: Color(0xFF828282),fontSize: 12,fontWeight: FontWeight.w600),),
                                SizedBox(height: 5,),
                                Text("+\$23,000",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => AllExpenses(
                                ),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            height: 110,
                            width: 160,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                                color: Color(0xFFFFFFFF)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment:Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Color(0xFFFDEEEE),
                                    child: Icon(Icons.arrow_upward,color: Color(0xFFEE6B6B,),size: 15,),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("TOTAL EXPENSE",style: TextStyle(color: Color(0xFF828282),fontSize: 12,fontWeight: FontWeight.w600),),
                                SizedBox(height: 5,),
                                Text("-\$23,000",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerLeft,
                      child: Text("Recent Transaction",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),)),
                  SizedBox(height: 15,),
                  Container(
                    child: ListView.builder(itemCount:titles.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                      return Transactions(
                        title: titles[index],
                        subtitle: subtitles[index],
                        icons: icons[index],
                        money: money[index],
                        date: dates[index],
                        color: colors[index],
                      );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
          floatingActionButton:Container(
            alignment: Alignment.bottomRight,
           child: FloatingActionButton(
                heroTag: null,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllIncome()),
                  );
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF006AF6),
              ),
          )
      );

  }
}

class Transactions extends StatelessWidget {
  const Transactions({
    this.title,
    this.icons,
    this.subtitle,
    this.money,
    this.date,
    this.color,
    Key key,
  }) : super(key: key);
  final String title;
  final IconData icons;
  final String subtitle;
  final String money;
  final String date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
          child: Container(
            height: 99,
           padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
              color: Color(0xFFFFFFFF)
    ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
          Container(
          child: Row(
           children: [
           Container(
            height: 70,
            width: 70,
           decoration:BoxDecoration(borderRadius: BorderRadius.circular(4),
           color: Color(0xFFF9F9F9)
    ),
           child: Icon(icons),
    ),
             Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 12),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
               SizedBox(height: 8,),
               Text(subtitle,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,),)
              ],
              ),
             )
            ],
          ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             InkWell(
                 onTap: (){
                   Navigator.push(context,
                     MaterialPageRoute(
                       builder: (context) => Currency(
                       ),
                     ),
                   );
                 },
                 child: Text(money,style: TextStyle(color: color,fontSize: 16,fontWeight: FontWeight.w600),)),
                SizedBox(height: 8,),
              Text(date,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),)
          ],
          ),
         )
            ],
          ),
          ),
          ),
        SizedBox(height: 10,),
         ],
    );
  }
}

