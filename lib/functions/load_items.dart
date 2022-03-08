import 'package:wkpk_shop/classes/smaple_snack_data.dart';
import 'package:wkpk_shop/classes/snack.dart';

class LoadItems{
  var data;
  Future<List<Snack>?> loadItems()async{
    await Future.delayed(const Duration(seconds: 1)).then((s)=>data = sample);
    return data;
  }

}