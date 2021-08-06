import 'dart:convert';
import 'package:farmer/pages/getStarted.dart';
import 'package:farmer/pages/home.dart';
import 'data.dart';
import 'package:farmer/pages/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//List data = [1, 2, 3];
class DecideFirstpage extends StatefulWidget {
  @override
  State<DecideFirstpage> createState() => _DecideFirstpageState();
}

List l = [];

class _DecideFirstpageState extends State<DecideFirstpage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("asset/data.json");
    var decodeData = jsonDecode(catalogJson) as List;
    //print(decodeData[0]);
    //print(decodeData);
    l = List.from(decodeData).map<Person>((e) => Person.fromMap(e)).toList();
    print(l);
    setState(() {});
  }

  Widget build(BuildContext context) => Scaffold(
        body: l.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : l[l.length-1].name == ""
                ? GetStartedPage()
                : HomePage(),
        // ListView.builder(
        //     itemCount: l.length,
        //     itemBuilder: (context, index) {
        //       return Column(
        //         children: [Text("data ${l[index].name}"),
        //           Container(
        //               child: ItemWidget(
        //             item: l[index],
        //           )),
        //         ],
        //       );
        //     }),
      );
}

// class DecideFirstPage extends StatefulWidget {
//   DecideFirstPage({Key? key}) : super(key: key);

//   @override
//   _DecideFirstPageState createState() => _DecideFirstPageState();
// }

// class _DecideFirstPageState extends State<DecideFirstPage> {
//   Future<List<Person>> readJson() async {
//     final jsondata = await rootBundle.rootBundle.loadString('assets/data.json');
//     final list = json.decode(jsondata) as List<dynamic>;
//     return list.map((e) => Person.fromJson(e)).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: readJson(),
//         builder: (context, data) {
//           if (data.hasError) {
//             return Text("error");
//           } else if (data.hasData) {
//             var item = data.data as List<Person>;
//             return Column(
//               children: [
//                 Text(item[0].MyEmail.toString()),
//                 Text(item[1].MyEmail.toString()),
//                 Text(item[2].MyEmail.toString()),
//                 Text(item[3].MyEmail.toString()),
//                 Text(item[0].MyName.toString()),
//                 Text(item[1].MyName.toString()),
//                 Text(item[2].MyName.toString()),
//               ],
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
class ItemWidget extends StatelessWidget {
  final Person item;

  ItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        //leading: Image.network(item.image),
        title: Text(item.name),
        //subtitle: Text(item.desc),
      ),
    );
  }
}
