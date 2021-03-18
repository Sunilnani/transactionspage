import 'package:flutter/material.dart';
import 'package:flutter_transactions/details.dart';
import 'package:flutter_transactions/main.dart';
import 'package:intl/intl.dart';
class AddTransaction extends StatefulWidget {
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  List _options=["Transaction Type","Income","About"];
  String _selectedItem = 'Item';
  DateTime currentDate = new DateTime.now();
  Future<Null> _selectdate(BuildContext context) async{
    final DateTime _seldate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2027),
        builder: (context,child) {
          return SingleChildScrollView(child: child,);
        }
    );
    if(_seldate!=null) {
      setState(() {
        currentDate = _seldate;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    String _formattedate = new DateFormat.yMMMd().format(currentDate);
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
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],

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
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
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
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],
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
                            child: Icon(Icons.keyboard_arrow_down_outlined),
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
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],

                      ),
                      child: TextField(
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: InputDecoration(
                          hintText: "Tags",
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
                      padding: EdgeInsets.symmetric(horizontal: 18 ),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color(0xffeaeaea),
                      ),

                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          currentDate ==  Null ?
                          Text('When'  ,style: TextStyle(color: Colors.grey[400],fontSize: 14),) : Text("${_formattedate}"),
                          IconButton(onPressed: (){
                            _selectdate(context);
                          },icon: Icon(Icons.calendar_today,color: Colors.grey[400],),
                          )
                        ],),

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
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey[200],

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
