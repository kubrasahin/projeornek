import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TextEditingController nameController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  final _formkeyy=GlobalKey<FormState>();
  String? name, password;
bool durum=false;
  void login(String text, String text2) {
    if(_formkeyy.currentState!.validate()){
      if(text=="kubra" && text2=="123456"){

        snaccbar("Kullanıcı dogrulandı");
      }else{
        snaccbar("Kullanıcı Bilgileri Hatalı");
      }

    }
    }



  void snaccbar(String s) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(s))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
key:_formkeyy,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child:  TextFormField(

                    style: TextStyle(color: Color(0xff8c8c8c)),
                    cursorColor: const Color.fromARGB(255, 230, 36, 102),
                    onSaved: (String? value) {
                      name = value;
                    },
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Lütfen isminizi giriniz";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.red),
                        helperText: ' ',
                        fillColor: Colors.white,

                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 5),
                          child: const Icon(
                            Icons.lock,
                            color: Color(0xff8c8c8c),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5.0),
                        hintText: "isminmiz",
                        hintStyle: const TextStyle(color: Color(0xff8c8c8c)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 224, 224, 226))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 224, 224, 226))),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.red))),
                  ),
                ),


          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Container(
            height: 105,
            child: TextFormField(
              style: TextStyle(color: Color(0xff8c8c8c)),
              cursorColor: const Color.fromARGB(255, 230, 36, 102),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Lütfen sifrenizi giriniz";
                }
                return null;
              },
              onSaved: (String? value) {
                password = value;
              },
              controller: passwordController,

              obscureText: true,
              decoration: InputDecoration(
                  errorStyle: TextStyle(color: Colors.red),
                  helperText: ' ',
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 5),
                    child: const Icon(
                      Icons.lock,
                      color: Color(0xff8c8c8c),
                    ),
                  ),
                  contentPadding: EdgeInsets.all(5.0),
                  hintText: "sifreniz",
                  hintStyle: const TextStyle(color: Color(0xff8c8c8c)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 224, 224, 226))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 224, 224, 226))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red))),
            ),
          ),
        ),

              ElevatedButton(onPressed: (){
                login(nameController.text, passwordController.text);
              }, child: Text("Giris")),

              SwitchListTile(value: durum, onChanged: (bool value){
                setState(() {
                  durum=value;
                });

              },

              activeColor: Colors.green,

                inactiveTrackColor: Colors.grey,
                inactiveThumbImage: AssetImage("assets/pngg.png"),
                title: Text("Ürün adınız"),
                subtitle: Text("merhaba "),

              )
            ],
          ),
        ),
      ),
    );
  }


}
