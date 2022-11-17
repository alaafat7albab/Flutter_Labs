import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffFFFFFF),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xff0E001A),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
                'Sign in to your B.TECH account and explore our',
                  style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  ),
            ),
            Text(
              'latest exclusive offers',
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye_outlined,
                ),
              ),
            ),
            SizedBox(
                height:20.0,
            ),
            Container(
              width: double.infinity,
              color:Color(0xffE5E5E5),
              child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.w600,
                      ),
                  ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                onPressed: (){},
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                    color: Color(0xff0066BE),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
