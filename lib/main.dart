import 'package:flutter/material.dart';

void main() {
<<<<<<< HEAD
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
=======
  runApp(MyWelcomeScreen());
}

class MyWelcomeScreen extends StatefulWidget {

  @override
  State<MyWelcomeScreen> createState() => _MyWelcomeScreenState();
}


class _MyWelcomeScreenState extends State<MyWelcomeScreen>{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton.small(onPressed: (){},child:  Icon(Icons.plus_one,color: Colors.white,),),
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text("Page Title",style: TextStyle(fontSize: 20,color: Colors.white),),
            actions: [
              Icon(Icons.favorite,color: Colors.white,),
              Icon(Icons.search,color: Colors.white,),
              Icon(Icons.messenger_sharp,color: Colors.white,),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(child: Column(
                  children: [
                    Image.asset("assets/background/background.png",
                    width: double.infinity,
                    height: 80,),
                    Text("User Name",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold ),),
                    Text("Email",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold ),)
                  ],
                )),
                ListTile(
                  tileColor: Colors.lightBlue,
                  leading: Icon(Icons.person,color: Colors.white,),
                  title: Text("My Account",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),),
                  trailing: Icon(Icons.arrow_right_alt,color: Colors.white,),
                ),
                ListTile(
                  tileColor: Colors.lightBlue,
                  leading: Icon(Icons.key,color: Colors.white,),
                  title: Text("change Passwrod",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),),
                  trailing: Icon(Icons.arrow_right_alt,color: Colors.white,),
                ),
              ],
            ),
          ),
          body: Text("test 1",style: TextStyle(fontSize: 25) )),
      
    );
  }

>>>>>>> Initial commit 2
}








<<<<<<< HEAD
=======

>>>>>>> Initial commit 2
