import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/components/Rouned_button.dart';
import 'package:login/components/already_have_an_account.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/costant.dart';
import 'package:login/screens/Login/loginscreen.dart';
import 'package:login/screens/Signup/component/background.dart';
import 'package:image_picker/image_picker.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
 File ? _imageFile;

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),

          Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage:

                 (_imageFile != null) ? FileImage(_imageFile!) as ImageProvider : AssetImage("assets/icons/profile.jpeg")





              ),
              Positioned(
                bottom: 10.0,
                right: 15.0,
                child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: ((builder) => bottomsheet()));
                    },
                    child:
                        Icon(Icons.camera_alt, size: 30, color: primarycolor)),
              )
            ],
          ),
          // Image.asset("assets/icons/phone.png",
          //
          // height: size.height*0.21,
          //
          // ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedInputField(
              hintText: "Enter Your Name ", onChanged: (value) {}),

          RoundedInputField(
              icon: Icons.alternate_email_sharp,
              hintText: "Enter Your Email ",
              onChanged: (value) {}),
          RoundedInputField(
              icon: Icons.add_call,
              hintText: "Enter Your Phone Number ",
              onChanged: (value) {}),

          RoundedPasswordField(onChanged: (value) {}),

          RoundedPasswordField(
              hintText: "Confirm Password", onChanged: (value) {}),

          RoundedButton(press: () {}, text: "Signup"),

          SizedBox(
            height: size.height * 0.01,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            login: false,
          ),
          OrDivider()
        ],
      ),
    );
  }

  Future takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    if(pickedFile==null)
      return;
    setState(() {
      //_imageFile = pickedFile ;
      _imageFile=File(pickedFile.path);
    });
  }




  Widget bottomsheet() {
    return Container(
      height: 100.0,
      width: 100.0,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
// EdgeInsets.symmetric
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile Photo ",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              TextButton.icon(
                  onPressed: (){takePhoto(ImageSource.camera);},
                  icon: Icon(Icons.camera,color: primarylightcolor,),
                  label: Text("camera",style: TextStyle(color: primarycolor),)),
              SizedBox(
                width: 150,
              ),
              TextButton.icon(
                  onPressed: (){takePhoto(ImageSource.gallery);},
                  icon: Icon(Icons.image,color: primarylightcolor,),
                  label: Text("Gallery",style: TextStyle(color: primarycolor),)),
            ],
          )
        ],
      ),
    );
  } // Container
}



class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
