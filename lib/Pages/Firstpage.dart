import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  static const tab_style = TextStyle(
    fontFamily: 'Irs',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );

  List<String> source = [
    'انگلیسی',
    'اسپانیایی',
    'فرانسوی',
    'آلمانی',
    'ایتالیایی',
    'روسی',
    'فارسی',
  ];

  List<String> destination = [
    'فارسی',
    'روسی',
    'ایتالیایی',
    'آلمانی',
    'فرانسوی',
    'اسپانیایی',
    'انگلیسی',
  ];

  String selectedItem_source = 'انگلیسی';
  String selectedItem_destination = 'فارسی';

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          elevation: 20,
          margin: EdgeInsets.all(8),
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'زبان مقصد',
                      style: tab_style,
                    ),
                    Text(
                      'زبان مبدا',
                      style: tab_style,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 80,
                        height: 48,
                        margin: EdgeInsets.all(16),
                        //color: Colors.amberAccent,
                        child: DropdownButtonFormField<String>(
                          style: tab_style,
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            fillColor: Colors.grey[200],
                          ),
                          value: selectedItem_destination,
                          items: destination
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: tab_style,
                                    textDirection: TextDirection.rtl,
                                  ),
                                  alignment: AlignmentDirectional.centerEnd,
                                ),
                              )
                              .toList(),
                          onChanged: (item) => setState(() {
                            selectedItem_destination = item!;
                          }),
                        ),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2 - 80,
                        height: 48,
                        margin: EdgeInsets.all(16),
                        //color: Colors.amberAccent,
                        child: DropdownButtonFormField<String>(
                          style: tab_style,
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.white),
                            ),
                            fillColor: Colors.grey[200],
                          ),
                          value: selectedItem_source,
                          items: source
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: tab_style,
                                    textDirection: TextDirection.rtl,
                                  ),
                                  alignment: AlignmentDirectional.centerEnd,
                                ),
                              )
                              .toList(),
                          onChanged: (item) => setState(() {
                            selectedItem_source = item!;
                          }),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 140,
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.only(top: 14, right: 16, left: 16),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      autofocus: false,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      decoration: InputDecoration(
                        labelStyle: tab_style,
                        hintText: 'متن خود را وارد نمایید',
                        hintStyle: tab_style,
                        icon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.clear,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Icon(
                              Icons.volume_up,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      controller: _controller,
                      onChanged: (text){

                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
