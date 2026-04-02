import 'package:flutter/material.dart';

class ScrollViewDemo extends StatelessWidget {
  const ScrollViewDemo({super.key});

  @override
  Widget build(BuildContext context) {

    // toggle for column or row
    bool toggle = true;

    List<Color> containerColor = [
      Colors.purple,
      Colors.indigo,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.red,
    ];

    return Scaffold(

      // app bar
      appBar: AppBar(
        // foregrand and background color
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        // app bar title
        title: const Text(
          'Scroll View',
          // title stying
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),

        // action button
        actions: const [
          Icon(
            Icons.snapchat_sharp,
            color: Colors.white,
          )
        ],

        // action button padding
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(Icons.grid_4x4_outlined),

      // body of scroll view page
      body: toggle
          ? Container(
              // Column scroll view
              decoration: const BoxDecoration(color: Colors.grey),
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(color: Colors.white),
                height: 550,
                child: SingleChildScrollView(

                  scrollDirection: Axis.vertical,  // contorll the scroll direction of the childrens

                  // physics: const BouncingScrollPhysics(),  // use vertical for column scrolling

                  // reverse: true,  // it controls the scroll start either form bottom to top or from top to bottom (use case - chat applicaiton)

                  child: Column(
                    children: List.generate(
                      containerColor.length,
                      (index) {
                        return Column(
                          children: [
                            Container(
                              height: 140,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: containerColor[index],
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            if (index !=
                                containerColor.length -
                                    1) // always use one less here because indexing start from ZERO
                              const SizedBox(
                                height: 10,
                              )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            )
          :

          // row scroll view
          Container(
              padding: const EdgeInsetsDirectional.all(
                10,
              ),
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,  // use horizaontal for row scrolling
                  child: Row(
                    children: List.generate(containerColor.length, (index) {
                      return Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: containerColor[index],
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 221, 220, 220),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                          ),
                          if (index != containerColor.length - 1)
                            const SizedBox(
                              width: 10,
                            )
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ),

    );

  }
}
