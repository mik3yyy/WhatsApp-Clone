import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final List<String> items = Countries.countries;
  String selectedValue = 'Nigeria';

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> _menuItems = [];
    for (var item in items) {
      _menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  item,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return _menuItems;
  }
  List<double> _getCustomItemsHeights() {
    List<double> _itemsHeights = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        _itemsHeights.add(40);
      }
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        _itemsHeights.add(4);
      }
    }
    return _itemsHeights;
  }
  var countryValue;
  @override
  Widget build(BuildContext context) {
    String? initialValue= Countries.countriesCode[selectedValue];



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Constants.white,
        elevation: 0,
        title: Text('Enter your phone number',
          style: TextStyle(
            color: Constants.green
          ),
        ),
        actions: const  [
        SizedBox(
          width: 50,
          child: RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.keyboard_control_outlined,
                  color: Colors.black,
                ),
            ),
        ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('WhatsApp will need to verify your phone number.',
                    style: TextStyle(
                        color: Constants.black
                    ),
                  ),
                  Text('What\'s my number?',
                    style: TextStyle(
                        color: Constants.lightBlue
                    ),
                  ),
                  DropdownButton2(
                    isExpanded: true,
                    dropdownDecoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Constants.darkGreen
                            )
                        )

                    ),


                    hint: Text(
                      'Select Item',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,

                      ),
                    ),
                    iconEnabledColor: Constants.darkGreen,

                    items: _addDividersAfterItems(items),
                    customItemsHeights: _getCustomItemsHeights(),
                    value: selectedValue,
                    onChanged: (value) {

                      setState(() {
                        selectedValue = value as String;
                      });

                    },

                    buttonHeight: 40,
                    dropdownMaxHeight: 200,
                    buttonWidth: 300,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        child: TextFormField(
                          // initialValue:initialValue ,
                          decoration: InputDecoration(
                              hintText: initialValue,
                              hintStyle: TextStyle(
                                  color: Constants.black
                              ),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Constants.darkGreen
                                  )
                              )

                          ),

                          enabled: false,

                        ),
                      ),
                      SizedBox(width: 10,),
                      SizedBox(
                        width: 220,
                        child: TextFormField(
                          // initialValue:initialValue ,
                          decoration: InputDecoration(
                              hintText: 'phone number',
                              hintStyle: TextStyle(
                                  color: Constants.black
                              ),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Constants.darkGreen
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Constants.darkGreen
                                  )
                              )
                          ),
                          cursorColor: Constants.darkGreen,

                          enabled: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.6,),
              MaterialButton(
                onPressed: (){},
                child: Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Constants.darkGreen,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text('NEXT',
                      style: TextStyle(
                        color: Constants.white,
                      ),
                    ),
                  ),
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
