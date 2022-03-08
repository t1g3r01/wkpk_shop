import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:wkpk_shop/classes/smaple_snack_data.dart';
import 'package:wkpk_shop/classes/snack.dart';
import 'package:wkpk_shop/functions/load_items.dart';
import 'package:wkpk_shop/widgets/card_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String rn = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Snack>? snacks=[];
  _appBar(){
    return AppBar(
      title: const Text("Poki Icecream"),
      actions: [
        IconButton(onPressed: (){},  icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
  _mainItems(){
    return List.generate(snacks!.length, (index) => CardItem(
      name: snacks![index].name,
      onPressed: (){},
      img: snacks![index].img,
      rank: snacks![index].rank,
      isFavorite:snacks![index].isFavorite ,
    ));
  }
  @override
  void initState() {
    super.initState();
    _loadItems();
  }
  _loadItems()async{
    snacks = await LoadItems().loadItems();
    setState(() {
      print(snacks);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
     body: ListView(
       children: _mainItems(),
     ),
    );
  }
}
