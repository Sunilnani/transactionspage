import 'package:flutter/material.dart';
import 'package:flutter_transactions/details.dart';
import 'package:flutter_transactions/main.dart';
class AddTransaction extends StatefulWidget {
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  List _options=["Transaction Type","Income","About"];
  String _selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp(
                            ),
                          ),
                        );
                      }
                      ),
                      SizedBox(width: 50,),
                      Text("Add Transaction",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(0,3),
                            spreadRadius: 0.5,
                            blurRadius: 1
                        )],
                      ),
                        child: TextField(
                          cursorColor: Theme.of(context).cursorColor,
                          decoration: InputDecoration(
                            hintText: "Title",
                            hintStyle: TextStyle(color: Color(0xFF828282),fontSize: 16,fontWeight: FontWeight.w400),
                            border: InputBorder.none
                          ),
                        ),
                    ),
                  ),
                 SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(0,3),
                            spreadRadius: 0.5,
                            blurRadius: 1
                        )],
                      ),
                      child: TextField(
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: InputDecoration(
                          hintText: "Amount",
                          hintStyle: TextStyle(color: Color(0xFF828282),fontSize: 16,fontWeight: FontWeight.w400),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(0,3),
                            spreadRadius: 0.5,
                            blurRadius: 1
                        )],
                      ),
                      child: TextField(
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: InputDecoration(
                          hintText: _selectedItem,
                          hintStyle: TextStyle(color: Color(0xFF828282),fontSize: 16,fontWeight: FontWeight.w400),
                          //suffixIcon: Icon(Icons.keyboard_arrow_down),
                          suffixIcon:    PopupMenuButton(
                            itemBuilder: (BuildContext bc) {
                              return _options
                                  .map((day) => PopupMenuItem(
                                child: Text(day),
                                value: day,
                              ))
                                  .toList();
                            },
                            onSelected: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                          ),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(0,3),
                            spreadRadius: 0.5,
                            blurRadius: 1
                        )],
                      ),
                      child: TextField(
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: InputDecoration(
                          hintText: "Tags",
                          hintStyle: TextStyle(color: Color(0xFF828282),fontSize: 16,fontWeight: FontWeight.w400),
                          suffixIcon: Icon(Icons.keyboard_arrow_down),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(0,3),
                            spreadRadius: 0.5,
                            blurRadius: 1
                        )],
                      ),
                      child: TextField(
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: InputDecoration(
                          hintText: "When",
                          hintStyle: TextStyle(color: Color(0xFF828282),fontSize: 16,fontWeight: FontWeight.w400),
                          suffixIcon: Icon(Icons.calendar_today,size: 15,),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:18.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(4),topLeft: Radius.circular(4)),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(0,3),
                            spreadRadius: 0.5,
                            blurRadius: 1
                        )],
                      ),
                      child: TextField(
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: InputDecoration(
                          hintText: "Note",
                          hintStyle: TextStyle(color: Color(0xFF828282),fontSize: 16,fontWeight: FontWeight.w400),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  SizedBox(
                    height: 50,
                    width: 320,
                    child: RaisedButton(
                        textColor: Color(0xFFF2F2F2),
                      color: Colors.blue,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                        );
                      },
                      child: Text("Add Transaction",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
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
