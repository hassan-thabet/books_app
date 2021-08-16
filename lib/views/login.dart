import 'package:content/constants/app_colors.dart';
import 'package:content/views/home.dart';
import 'package:content/views/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool secure = true;
  bool checkboxValue = true;
  IconData? icon ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_MAIN_COLOR,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(270 / 360),
                    child: Text(
                        'b'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 12
                        ),
                    ),
                  ),
                  Text(
                    'OO',
                    /// هنا زودنا دوت ابر كيس علشان يكبرلي الحروف بدل ما اكتبها انا كبيره
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 12
                        ///  وهنا زودنا ليتر سبيس و دي بتعمل مسافه ما بين الحروف و بعضها
                    ),
                  ),
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(270 / 360),
                    child: Text(
                      'k'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 12
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Login',
                          style: TextStyle(fontSize: 30 , color: DARK_TEXT),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'E-mail',
                              labelText: 'E-mail',
                              prefixIcon: Icon(Icons.email_outlined)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(


                            hintText: 'Password',
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    secure = !secure;
                                  });
                                },
                                icon: (secure == true )
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off)

                                ///  اللي بين القوصين فوق ده الشرط
                              ///  و علامه الاستفهام دي معناها لو الشرط هتحقق
                              ///  و بعدها علامه ال : دي معناها لو الشرط متحققش


                            ),
                          ),
                          obscureText: secure,

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: UNSELECTED_ICONS,
                              activeColor: APP_MAIN_COLOR,
                              value: checkboxValue,
                              onChanged: (bool? value)
                                {
                                  setState(() {
                                    checkboxValue = value!;
                                  });

                                },
                            ),
                            Text('Remember me'),
                            Spacer(),
                            TextButton(
                              onPressed: ()
                              {
                                // TODO: Remember password method
                              },
                              child: Text(
                                'Forget password !',
                                style: TextStyle(color: APP_MAIN_COLOR),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Home()));
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: APP_MAIN_COLOR),
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                              'Login',
                              style: TextStyle(fontSize: 22, color: Colors.white),
                            ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height:10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account ?'),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Singup()));
                              },
                              child: Text(
                                'Signup',
                                style: TextStyle(color: APP_MAIN_COLOR),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
