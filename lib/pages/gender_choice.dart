import 'package:flutter/material.dart';
import 'package:flutter_ideal_store/pages/login.dart';

class GenderChoicePage extends StatefulWidget {
  const GenderChoicePage({super.key});

  @override
  State<GenderChoicePage> createState() => _GenderChoicePageState();
}

class _GenderChoicePageState extends State<GenderChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Image(
              image: NetworkImage(
                  "https://cloudfront-eu-central-1.images.arcpublishing.com/thenational/VAA3O6TVYNC5TOENSU5FN36UIQ.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            left: 5,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 270,
            child: const Text(
              "Make Your Purchases as",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("MAN",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                const SizedBox(width: 25),
                SizedBox(
                  height: 70,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("WOMAN",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
