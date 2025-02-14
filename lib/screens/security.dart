import 'package:flutter/material.dart';
import 'package:update_greenfin/screens/changepassword.dart';
import 'package:update_greenfin/screens/notificationsettingscreen.dart';
import 'package:update_greenfin/screens/privacypolicy.dart';

class securityscreen extends StatefulWidget {
  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<securityscreen> {
  bool isBiometricEnabled = false;
  bool TwoFactor= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text('Security Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green[700],
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (e)=>notificationsettingscreen()));
          }, icon: Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.lock, color: Colors.green),
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (e)=>ChangePasswordScreen()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.fingerprint, color: Colors.green),
              title: Text('Biometric Authentication'),
              trailing: Switch(
                value: isBiometricEnabled,
                onChanged: (bool value) {
                  setState(() {
                    isBiometricEnabled = value;
                  });
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.security, color: Colors.green),
              title: Text('Two-Factor Authentication'),
              trailing: Switch(
                value: TwoFactor, // Set initial value
                onChanged: (bool value) {
                  // Add toggle functionality
                  setState(() {
                    TwoFactor=value;
                  });
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Colors.green),
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (e)=>privacypolicy()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
