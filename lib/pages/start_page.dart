import 'package:flutter/material.dart';
import 'package:medix/pages/tearms_page.dart';

class start extends StatelessWidget {
  const start({super.key});

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //backgroundColor: const Color.fromARGB(255, 201, 124, 215),

        /*appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome To Home Page!',
          style: TextStyle(fontSize: 25.00),
        ),
      ),*/

        body: Container(
      width: devWidth,
      height: devHeight,
      color: Colors.white,
      child: Stack(
        children: [
          //purple back container
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: devWidth,
              height: devHeight * 0.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0.00, 1.00),
                  colors: [
                    Color.fromARGB(255, 187, 146, 226),
                    Color(0xFFB96CFF)
                  ],
                ),
              ),
            ),
          ),

          /*Container(
                color: Colors.blue,
                height: 150,
                width: 150,
              ),*/

          //const Image(image: AssetImage('images/logo.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Image.asset(
              'assets/logo.jpg',
              width: 400,
              height: 300,
            ),
          ),
          
           Image(
            image: AssetImage('assets/intro.png'),
            width: 400,
            height: 800,
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 750,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Center(
                    child: Text("NSBM Medical Assistant",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(9.0),
                  ),
                  const Center(
                    child: Text("Make your EC and Medical Appointment at",
                        style: TextStyle(fontSize: 15)),
                  ),
                  const Center(
                    child: Text("one place without wasting time",
                        style: TextStyle(fontSize: 15)),
                  ),
                  const Center(
                    child: Text("on lecture!", style: TextStyle(fontSize: 15)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button click logic here
                      print('Button clicked!');
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        backgroundColor: Colors.purple),
                    child: const Text('START', style: TextStyle(fontSize: 20)),
                  ),
                  // const Padding(
                  //   padding: EdgeInsets.all(20.0),
                  // ),
                ],
              ),
        ),
        //const Image(image: AssetImage('images/logo.png')),
        Image.asset(
          'assets/logo.jpg',
          width: 250,
          height: 50,
        ),
        const Image(image: AssetImage('assets/intro.png')),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Center(
                  child: Text("NSBM Medical Assistant",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.all(9.0),
                ),
                const Center(
                  child: Text("Make your EC and Medical Appointment at",
                      style: TextStyle(fontSize: 15)),
                ),
                const Center(
                  child: Text("one place without wasting time",
                      style: TextStyle(fontSize: 15)),
                ),
                const Center(
                  child: Text("on lecture!", style: TextStyle(fontSize: 15)),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TearmsPage())); //navigation from the next page                    print('Button clicked!');
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      backgroundColor: Colors.purple),
                  child: const Text('START', style: TextStyle(fontSize: 20)),
                ),
                // const Padding(
                //   padding: EdgeInsets.all(20.0),
                // ),
              ],
            ),
          ),
          /*body: const Center(
        child: Text(
          "HELLO 2ND ASSESMENT!",
          style: TextStyle(
              backgroundColor: Color.fromARGB(25, 217, 76, 76),
              fontSize: 25.00),
        ),
      ),
      */
        ],
      ),
    ),);
  }
}
