import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp(
    growableList: List<ListItem>
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  List<ListItem> growableList ;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'list_v2',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class addProduct(String growableList) {
  //pop out a dialog to input the product name.
  return growableList.add(); //Add the product name into the growableList.
}

abstract class ListItem{
  Widget productName(BuildContext context);
  Widget quantity(dynamic context);
}

class list implements ListItem{
  String name;
  int number;

  list(this.name, this.number);

  Widget productName(BuildContext context) => Text(name);

  Widget quantity(dynamic context){
    return number = context;
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget createItem(String contextText) {
  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
  
  return ListTile(
    title: Text(contextText),
    trailing: ElevatedButton(style: style,onPressed: null,child: const Text('0')),//設定onPressed function
  );
}
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: Text('This is a title'),
      ),
      body: ListView.builder(
        
        itemCount: growableList.length,
        itemBuilder:  )

      );
    }
}
