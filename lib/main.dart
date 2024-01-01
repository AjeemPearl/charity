
import 'package:demo_flutter/models/Data.dart';
import 'package:demo_flutter/ui/welcome/welcome.dart';
import 'package:demo_flutter/utils/constants.dart';
import 'package:demo_flutter/webservices/RetrofitClient.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //status color
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor:Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:KPrimaryColor ,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('Your App Title'),
      //   ),
      //   body: _buildBody(context), // Call _buildBody here
      // ),

      home:  const Welcome(),

    );
  }

  FutureBuilder<List<Photos>> _buildBody(BuildContext context) {
    final client = RetrofitClient(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder<List<Photos>>(

      future: client.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final List<Photos> data = snapshot.data! ;
          return _buildPosts(context, data);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }


  ListView _buildPosts(BuildContext context, List<Photos> posts) {
    return ListView.builder(
      itemCount: posts.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          child: ListTile(
            title: Text(
              posts[index].id.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(posts[index].title!),
            leading: Column(
              children: <Widget>[
                Image.network(posts[index]!.url.toString(),width: 50,height: 50,
                ),
              ],

            ),
          ),
        );
      },
    );
  }
}



