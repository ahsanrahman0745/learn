import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: LoginScreen(),
    );
  }
  
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

   bool visbale = true;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/background/background.png'),
                    fit: BoxFit.fill,
                  ),

                ),
              ),
              Positioned(
                  left: 150,
                  top: 150,
                  child: Text("Login",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),))



              // Container(
              //   width: 500,
              //   height: 500,
              //   color: Colors.orange,
              // ),
              // Container(
              //   width: 400,
              //   height: 400,
              //   color: Colors.yellow,
              // ),
              // Container(
              //   width: 300,
              //   height: 300,
              //   color: Colors.grey,
              // )





            ],
          ),

          Container(
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 11),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 18,color: Colors.blueAccent),
                    ),
                  ),
                  TextField(
                    obscureText: visbale,
                    controller: passwordController,
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 18,color: Colors.blueAccent),
                      suffixIcon: IconButton(onPressed: () {
                        if(visbale){
                          visbale = false;
                        }else {
                          visbale = true;
                        }
                        setState(() {

                        });
                        print(visbale);
                      }, icon:
                          visbale ? Icon(Icons.visibility) : Icon(Icons.
                        visibility_off),

                      ),

                    ),

                  )
                ],
              ),
            ),
          ),


          SizedBox(height: 50,),

          ElevatedButton(

              onPressed: (){}, child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 11),
                child: const Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.white),),
              ))














        ],
      ),
    );
  }
}








