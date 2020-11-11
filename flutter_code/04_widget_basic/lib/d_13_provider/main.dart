import 'package:flutter/material.dart';
import 'package:hello_flutter/d_13_provider/provider_demo.dart';
import 'package:provider/provider.dart';

import 'provider_viewmodel.dart';

main(List<String> args) {
  //开发中：Provider包裹在最顶层，保证Provider提供的所有数据在整个应用程序任何地方都可以共享
//  runApp(ChangeNotifierProvider(
//    create: (context) => ProviderViewModel(),
//    child: MyApp(),
//  ));

  runApp(MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => ProviderViewModel(),),
        ChangeNotifierProvider(create: (context) => ProviderViewModel2(UserModel(name:"Jentle",age:30)),),
      ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ProviderDemo();
  }
}
