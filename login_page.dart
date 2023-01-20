import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_damo.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var unameController=TextEditingController();
  var passwordController=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var ishiddenpassword = true;
  var ishiddenusername = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xfff4eff3),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key:_formKey,
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Center(child: Text('Hello Again!',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),),
                SizedBox(height: 10),
                Text('Wellcome back you`ve been missed!',style: TextStyle(fontSize: 18),),

                SizedBox(height: 20),

                TextFormField(
                  obscureText: ishiddenusername,
                  controller: unameController,
                  validator: (v){
                      if(v!.isEmpty){
                      return 'enter usernem';
                    }
                    else if(v.length <=8){
                      return 'enter 8 char';
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                     labelText: 'Enter usernem',
                    hintText: 'add enter userneme',

                    suffixIcon: IconButton(
                      icon: Icon(ishiddenusername ? Icons.account_balance_wallet_outlined : Icons.abc),
                      onPressed: (){
                        ishiddenusername =! ishiddenusername;
                        setState(() {

                        });
                      },
                             ),
                      ),
                    ),




                SizedBox(height: 10),

                TextFormField(
                  obscureText: ishiddenpassword,
                  controller: passwordController,
                  validator: (v){
                    if(v!.isEmpty){
                      return "Please enter password";
                    }
                    else if(v.length <=6){
                      return "Please enter atleast 6 character!";
                    }
                  },
                  decoration: InputDecoration(
                    filled: true,

                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText:'Password',
                    hintText:'Enter password' ,
                    labelStyle:TextStyle(color: Colors.red),
                    hintStyle: TextStyle(fontSize: 15),

                    // focusedBorder: ,
                    isDense: true,
                     suffixIcon:IconButton(
                         icon: Icon(ishiddenpassword ? Icons.security:Icons.remove_red_eye),
                       onPressed: (){
                           ishiddenpassword =! ishiddenpassword;
                           setState(() {

                           });
                       },
                     )
                  ),
                ),
                SizedBox(height: 5),



                Container(
                  margin: EdgeInsets.only(left: 200),
                    child: Text('RECOVERY PASSWORD'),),

                SizedBox(height: 20),

                GestureDetector(
                  onTap: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Appdemo()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> App(),));
                    }

                  },
                  child: Container(
                    height: 8.h,
                    width: 80.w,

                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Sign in',style: TextStyle(fontSize: 20,color: Colors.white),),),
                  ),
                ),

                SizedBox(height: 50),

                Row(
                  children: [
                    Container(
                        width: 30.w,
                        child: Divider(color: Colors.red)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('OR Continue With'),
                    ),
                    Container(
                        width: 30.w,
                        child: Divider(color: Colors.red)),
                  ],
                ),

                SizedBox(height: 50),

                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 310,
                      // color: Colors.green,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Container(
                            height: 50,
                            width: 70,
                            padding: EdgeInsets.all(8),
                            child: Image.network('https://cdn-icons-png.flaticon.com/128/270/270799.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3,color: Colors.white),
                            ),
                          ),


                          SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 70,
                            padding: EdgeInsets.all(8),

                            child: Image.network('https://cdn-icons-png.flaticon.com/128/2/2235.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3,color: Colors.white),
                            ),
                          ),


                          SizedBox(width: 20),
                          Container(
                            height: 50,
                            width: 70,
                            padding: EdgeInsets.all(8),

                            child: Image.network('https://cdn-icons-png.flaticon.com/128/3670/3670124.png'),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 3,color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 100),

                Container(
                  margin: EdgeInsets.only(left: 110),
                    child: Row(
                  children: [
                    Text('Not a Member ?'),
                    Text('Register Now',style: TextStyle(color: Colors.blue),),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//
// import 'package:flutter/material.dart';
//
// class loginpage extends StatefulWidget {
//   const loginpage({Key? key}) : super(key: key);
//
//   @override
//   State<loginpage> createState() => _loginpageState();
// }
//
// class _loginpageState extends State<loginpage> {
//   var password = TextEditingController();
//   var enterphone=TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         title: Text('long in'),
//       ),
//
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Center(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(child: Text('welcome to login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
//
//                   SizedBox(
//                     height: 20,
//                   ),
//
//                   TextFormField(
//                     obscureText: true,
//                     controller: enterphone,
//                     validator:(d){
//                       if(d!.isEmpty){
//                         return 'enter phone number';
//                       }
//                       else if(d.length <=6){
//                         return 'enter 6 char';
//                       }
//                     },
//
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: 'Enter Phone',
//                       hintText: 'phone numeber',
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold),
//                       suffixIcon: Icon(Icons.call),
//                     ),
//
//                   ),
//                   SizedBox(height: 20,),
//
//                   TextFormField(
//                     obscureText: true,
//                     controller: password,
//                     validator:(d){
//                       if(d!.isEmpty){
//                         return 'enter password';
//                       }
//                       else if(d.length <=6){
//                         return 'enter 8 char';
//                       }
//                     },
//
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       labelText: 'Enter password',
//                       hintText: 'pasword',
//                       labelStyle: TextStyle(fontWeight: FontWeight.bold),
//                       suffixIcon: Icon(Icons.password),
//                     ),
//                   ),
//
//                   SizedBox(height: 50,),
//
//                   GestureDetector(
//                     onTap: (){
//                       if(_formKey.currentState!.validate()){
//                         print('done');
//                       }
//                     },
//
//                     child: Container(
//                       child: Center(child: Text('login')),
//                       height: 40,
//                       width: 80,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.blue,
//                         border: Border.all(width: 1,color: Colors.black),
//
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       )
//
//     );
//   }
// }
