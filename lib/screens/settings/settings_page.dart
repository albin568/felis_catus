import 'package:felis_catus/screens/settings/change_password_settings.dart';
import 'package:felis_catus/screens/settings/privacy_policy_settings.dart';
import 'package:felis_catus/screens/settings/profile_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool light=false;
  bool message=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage(),)
                );
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notification'),
            trailing: Switch(value: message, onChanged: (value) {
              setState(() {
                message=!message;
              });
            },),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text('Dark Mode'),
            trailing: Switch(value: light, onChanged: (value) {
              setState(() {
                light=!light;
              });
            },),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context) => const PrivacyPolicyPage(),));
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.password),
            title: const Text('Change Password'),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ChangePassPage(),));
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Delete Account'),
            onTap: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: const Text("Delete Account"),
                  content: const Text("Do you want to delete your account?"),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    },
                        child: const Text("OK")),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: const Text("Cancel"))
                  ],
                );
              },);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: const Text("Logout"),
                  content: const Text("Do you want to continue?"),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, 
                        child: const Text("Cancel")),
                    TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: const Text("OK"))
                  ],
                );
              },
            );
              },
            ),
        ],
      ),

    );
  }
}
