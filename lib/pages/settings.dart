import 'package:diet_ideas/pages/settings/dietitian_biodata.dart';
import 'package:diet_ideas/pages/settings/my_accounts.dart';
import 'package:diet_ideas/pages/settings/receipt.dart';
import 'package:diet_ideas/pages/settings/service_prohtamme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Settings', style: TextStyle(color: Colors.black)),
          centerTitle: false,
          leading: const Text(""),
          leadingWidth: 0,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Card(
                  color: const Color(0xFFE6F1F8),
                  child: ListTile(
                    //Rounded image avatar
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Mask group.png'),
                        radius: 30,
                      ),
                    ),
                    title: const Text('Samantha Ong Jia Wen'),
                    subtitle: const Text('Registered on : 01/01/22'),
                    // onTap: () {
                    //   Navigator.pushNamed(context, '/account');
                    // },
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  color: const Color(0xFFE6F1F8),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyAccounts(),
                            ),
                          );
                        },
                        //Rounded image avatar
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const CircleAvatar(
                                      backgroundColor: Color(0xFF0047BA),
                                      child: Icon(Icons.person)))),
                        ),
                        title: const Text('My Account'),
                        subtitle: const Text('Make changes to your account'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ServiceProgramme(),
                            ),
                          );
                        },
                        //Rounded image avatar
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const CircleAvatar(
                                  backgroundColor: Color(0xFF0047BA),
                                  child: Icon(Icons.checklist_rtl))),
                        ),
                        title: const Text('Service Programme & Continuation'),
                        subtitle: const Text('Manage your programme'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Receipt(),
                            ),
                          );
                        },
                        //Rounded image avatar
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const CircleAvatar(
                                      backgroundColor: Color(0xFF0047BA),
                                      child: Icon(Icons.receipt)))),
                        ),
                        title: const Text('Receipts'),
                        subtitle: const Text('Manage your payment receipts'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DietitianBiodata(),
                            ),
                          );
                        },
                        //Rounded image avatar
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const CircleAvatar(
                                      backgroundColor: Color(0xFF0047BA),
                                      child: Icon(Icons.vaccines)))),
                        ),
                        title: const Text('Dietitian Biodata'),
                        subtitle: const Text('Get to know your dietitian'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DietitianBiodata(),
                            ),
                          );
                        },
                        //Rounded image avatar
                        leading: SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: const CircleAvatar(
                                      backgroundColor: Color(0xFF0047BA),
                                      child: Icon(Icons.logout)))),
                        ),
                        title: const Text('Log out'),
                        subtitle: const Text(
                            'Further secure your account for safety'),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
