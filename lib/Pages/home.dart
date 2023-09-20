import 'package:flutter/material.dart';
import 'package:online_translator/Pages/Firstpage.dart';
import 'package:online_translator/Pages/Secondpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const tab_style = TextStyle(
    fontFamily: 'Irs',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const title_style = TextStyle(
    fontFamily: 'Irs',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const menu_style = TextStyle(
    fontFamily: 'Irs',
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: EdgeInsets.only(top: 4, right: 0),
                child: Text('مترجم آنلاین', style: title_style,),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ],
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 28,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              bottom: TabBar(
                labelStyle: tab_style,
                tabs: [
                  Tab(text: 'مترجم متون آنلاین', icon: Icon(Icons.home),),
                  Tab(text: 'تشخیص کلمات', icon: Icon(Icons.visibility),),
                ],
              ),
            ),
            body: TabBarView(
              children: [


                First(),


                Second(),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountEmail: Text(''),
                    accountName: Text('مترجم آنلاین'),
                    currentAccountPicture: Image.asset('assets/images/logo.jpg'),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text('درباره ما', style: menu_style,),
                      leading: Icon(Icons.info),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text('ارتباط باما', style: menu_style,),
                      leading: Icon(Icons.telegram),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text('ثبت نطر', style: menu_style,),
                      leading: Icon(Icons.star_rate),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text('سایر برنامه ها', style: menu_style,),
                      leading: Icon(Icons.app_shortcut),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text('اشتراک برنامه', style: menu_style,),
                      leading: Icon(Icons.share),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text('خروج از برنامه', style: menu_style,),
                      leading: Icon(Icons.exit_to_app),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
