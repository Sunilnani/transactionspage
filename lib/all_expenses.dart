import 'package:flutter/material.dart';
import 'package:flutter_transactions/add_transaction.dart';

class AllExpenses extends StatefulWidget {
  @override
  _AllExpensesState createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  List<IconData> icons =[Icons.computer,Icons.local_pizza_outlined,Icons.all_inclusive_outlined,Icons.train_outlined];
  List<String> titles=["Cashback Offer","Cheesy Pizza","Freelancing","Metro Railway"];
  List<String> subtitles=["Entertainment","Transportation","Transportation","Journey"];
  List<String> money=["+\$30","-\$30","+\$1300","-\$30"];
  List<String>dates=["oct 30, 2021","oct 30, 2021","oct 29,2021","oct 28, 2021"];
  List<Color>colors=[Color(0xFF6FCF97),Color(0xFFEB5757),Color(0xFF6FCF97),Color(0xFFEB5757)];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:Container(
              color: Color(0xFFF9F9F9),
              child:SingleChildScrollView(
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
                                Text("All Expenses",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
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
                                Icon(Icons.more_vert)
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
                            Text("TOTAL EXPENSE",style: TextStyle(color: Color(0xFF828282),fontWeight: FontWeight.w600,fontSize: 10),),
                            SizedBox(height: 10,),
                            Text("\$23,000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.centerLeft,
                        child: Text("Recent Transaction",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),)),
                    Container(
                      child: ListView.builder(itemCount:titles.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                          return AllIncomeTransactions(
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
              )
          ),
          floatingActionButton:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: null,
                onPressed: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new AddTransaction()),
                  );
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xFF006AF6),
              ),
            ],
          )
      ),
    );
  }
}
class AllIncomeTransactions extends StatelessWidget {
  const AllIncomeTransactions({
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
                      Text(money,style: TextStyle(color: color,fontSize: 16,fontWeight: FontWeight.w600),),
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
