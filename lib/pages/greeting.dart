import 'package:flutter/material.dart';
import 'package:flutter_ideal_store/pages/login.dart';
import 'package:flutter_ideal_store/pages/sign_up.dart';

class GreetingPage extends StatefulWidget {
  const GreetingPage({super.key});

  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
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
            right: 5,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: Row(
                children: const [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 270,
            child: const Text(
              "Ideal Store for Shopping",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 370,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Sign in with Email",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 370,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Continue with Facebook",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    ),
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
