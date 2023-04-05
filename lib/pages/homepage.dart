import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    "assets/images/image_1.jpeg",
    "assets/images/image_2.webp",
    "assets/images/image_3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Apple Products", style: TextStyle(fontWeight: FontWeight.bold),),
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
              padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("7"),
              ),
            ),
          ),
        ],

      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 50),
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 240,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/images/image_4.jpeg"),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    const Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 35),),
                    const SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text("Shop now",style:TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20,),
            // #body
            Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                  children: _listItem.map((item) => cellOfList(item)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: const [
            Icon(Icons.favorite, color: Colors.red,size: 35,),
          ],
        ),
      ),
    );
  }
}
