import 'package:flutter/material.dart';
import 'package:sehat_app/view/DetailDoa.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: DoaApp()));

class DoaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Quotes',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
            Text('App'),
          ],
        ),
      ),
      body: _ListPage(),
    );
  }
}

final baseTextStyle = const TextStyle(color: Colors.white, fontFamily: 'Arial');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 27.0, fontWeight: FontWeight.bold);
final descTextStyle = baseTextStyle.copyWith(fontSize: 30.0);

class _ListPage extends StatefulWidget {
  @override
  __ListPageState createState() => __ListPageState();
}

class __ListPageState extends State<_ListPage> {
  List<String> Title = [
    "Abraham Lincoln",
    "Pablo Picasso",
    "Paulo Coelho",
    "Walt Disney",
    "Anonymous",
    "Anonymous",
    "Nelson Mandela",
    "Anonymous",
    "Anonymous",
    "Jadah Sellner",
  ];

  List<String> doaArab = [
    "Whatever you are, be a good one.",
    "Everything you can imagine is real.",
    "Impossible is just an opinion.",
    "All our dreams can come true, if we have the courage to pursue them.",
    "If you can dream it, you can do it.",
    "Believe in Yourself and you will be unstoppable",
    "A winner is a dreamer who never gives up.",
    "If the plan doesn't work, change the plan. But never the goal.",
    "Push yourself, because no one else is going to do it for you.",
    "It's okay to be glowstick, Sometimes we have to break before we shine.",
  ];

  List<String> artiDoa = [
    'Apapun diri Anda, jadilah yang terbaik.',
    'Apapun yang bisa Anda bayangkan itu nyata.',
    'Mustahil hanyalah sebuah opini.',
    'Semua mimpi kita bisa jadi kenyataan, jika kita memiliki keberanian untuk mengejarnya.',
    'Jika Anda bisa memimpikannya, Anda bisa melakukannya.',
    'Percayalah pada diri sendiri dan Anda tidak akan terhentikan.',
    'Seorang pemenang adalah pemimpi yang tidak pernah menyerah.',
    'Jika rencana Anda tidak berjalan maka ganti rencana tersebut, jangan tujuannya.',
    'Dorong diri Anda sendiri, karena tidak ada orang lain yang akan melakukannya untuk Anda.',
    'Tidak apa-apa menjadi glowstick, terkadang kita harus patah sebelum bersinar.',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 13),
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Title.length,
            itemBuilder: (BuildContext context, int index) {
              final title = Title[index].toString();
              final arab = doaArab[index].toString();
              final doa = artiDoa[index].toString();

              return Container(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width - 000,
                            padding: const EdgeInsets.all(20),
                            child: ItemList(
                              title,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailDoa(
                                      itemNama: title,
                                      itemArab: arab,
                                      itemArti: doa,
                                    )));
                      }),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Container(
            height: MediaQuery.of(context).size.width - 215,
            width: MediaQuery.of(context).size.width - 010,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6.0,
                      offset: Offset(0.0, 2.0),
                      color: Colors.black26)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.villabalisale.com/uploads/images/property/2017-10-30-property-59f6aa68c33d4.jpg'))),
            child: Padding(
              padding: const EdgeInsets.only(top: 220.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text("Don't Stop Until You Proud!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
          ),
        ),
//        Container(
//          child: ListView.builder(
//            itemCount: Title.length,
//            itemBuilder: (BuildContext context, int index) {
//              final title = Title[index].toString();
//              final arab = doaArab[index].toString();
//              final doa = artiDoa[index].toString();
//
//              return Container(
//                child: Padding(
//                  padding: EdgeInsets.all(10),
//                  child: GestureDetector(
//                      child: Stack(
//                        children: <Widget>[
//                          Container(
//                            width: MediaQuery.of(context).size.width - 000,
//                            padding: const EdgeInsets.all(20),
//                            child: ItemList(
//                              title,
//                            ),
//                            decoration: BoxDecoration(
//                                color: Colors.blue,
//                                borderRadius: BorderRadius.circular(10)),
//                          ),
//                        ],
//                      ),
//                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => DetailDoa(
//                                  itemNama: title,
//                                  itemArab: arab,
//                                  itemArti: doa,
//                                )));
//                      }),
//                ),
//              );
//            },
//          ),
//        ),
      ],
    );
  }

  ItemList(String title) {
    return new Container(
      //     width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: bigHeaderTextStyle,
          )
        ],
      ),
    );
  }
}
