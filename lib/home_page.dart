import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final padding = screenWidth * 0.01;
    final containerHeight = screenHeight * 0.21;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.21,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.pink.shade200,
                    Colors.yellow.shade200,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: padding,
                        left: padding,
                        bottom: padding,
                        right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "JULIUS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  screenWidth * 0.08, // 8% of screen width
                              fontWeight: FontWeight.bold,
                              height: 0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "AND ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    screenWidth * 0.04, // 4% of screen width
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "TINTIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    screenWidth * 0.08, // 4% of screen width
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "PARA SA PAMILYANG PILIPINO",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 66, 20, 193),
                            fontSize:
                                screenWidth * 0.025, // 2.5% of screen width
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: containerHeight,
                    width: containerHeight,
                    decoration: BoxDecoration(
                      shape:
                          BoxShape.circle, // Ensures the container is circular
                      border: Border.all(
                        color: Colors.green.shade300, // Mehendi green color
                        width: 3, // Border width
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.5),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape
                              .circle, // Ensures the image container is circular
                          color: Colors
                              .black12, // Background color for the image container
                        ),
                        clipBehavior: Clip
                            .hardEdge, // Ensures the image is clipped within the circular container
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://i.postimg.cc/J7bsNtgm/cropped-Profile-Picture-Round-Color.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Live Vote Results",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Winner Contestant",
                    style: TextStyle(
                        color: Colors.orange.shade200,
                        fontSize: screenWidth * 0.04),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: screenHeight * 0.18,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(
                              255, 254, 180, 180), // Light onion pink color
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://i.postimg.cc/tJd2V7KN/suit-PNG8124.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Omar D. Regalado",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Lorem ipsum loremipsum",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.035,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0, // Adjust according to needs
                        right: 0, // Adjust to ensure it's partly outside
                        child: CachedNetworkImage(
                          imageUrl: 'https://i.postimg.cc/90L4g1pD/12.png',
                          height: 35,
                          width: 35,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Total Votes",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "568",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.07,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey.shade200,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Total Votes",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "50%",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.07,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Others Contestant",
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    height: 80,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://i.postimg.cc/sfnhLBMt/Young-Man-PNG-Image.png',
                          fit: BoxFit.fitHeight,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chester chang",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.04),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "196 votes",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.03),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "35%",
                          style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    height: 80,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 99, 255, 177),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://i.postimg.cc/nzzkz2kp/man-png-transparent-images-png-only-8-1.png',
                          fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Robert Saliman",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.04),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "96 votes",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.03),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "19%",
                          style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    height: 80,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 144, 249, 147),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              'https://i.postimg.cc/PxnJRR8q/cream-always-rises-shot-of-a-young-businesswom-2022-07-18-19-36-28-utc.png',
                          fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kristin Lim",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.04),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "55 votes",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.03),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "10%",
                          style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Contest Vedios",
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "http:// www.youtube.com/watch?v=aLtXzKyNxkY",
                    style: TextStyle(
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Upcoming Events",
                    style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://th.bing.com/th/id/OIP.8b-uakhJzE1Ce2pR24_qkAAAAA?rs=1&pid=ImgDetMain',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Music Festival",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.04),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Date: 30/09/2024",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blueGrey,
                              ),
                              child: const Icon(Icons.arrow_forward_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://thumbs.dreamstime.com/z/poster-template-design-sport-event-background-abstract-dynamic-shapes-sports-competition-championship-207522607.jpg',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sports Events",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.04),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Date: 30/10/2024",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.blueGrey,
                              ),
                              child: const Icon(Icons.arrow_forward_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
