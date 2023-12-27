import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login/features/authentication/models/user_model.dart';
import 'package:login/features/core/controllers/profile_controller.dart';
import 'package:login/features/core/screens/profile/widget/appbar.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: ProfileAppBar(
        title: 'Edit Profile',
        isDark: isDark,
        onPress: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder<List<UserModel>>(
            // future: controller.getUserData() ,
            future: controller.getAllUsers(),
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){

                  // show all users
                  return ListView.builder(
                    shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context,index){
                      return Column(
                        children: [
                          ListTile(
                            iconColor: Colors.blue,
                            tileColor: Colors.blue.withOpacity(0.1),
                            leading: const Icon(LineAwesomeIcons.user),
                            title: Text('Name: ${snapshot.data![index].fullName}'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Phone: ${snapshot.data![index].phoneNo}'),
                                Text('Email: ${snapshot.data![index].email}'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                        ],
                      );
                  });


                  // show single user
                  // UserModel userData = snapshot.data as UserModel;
                  // return Column(
                  //   children: [
                  //     // -- IMAGE with ICON
                  //     Stack(
                  //       children: [
                  //         SizedBox(
                  //           width: 120,
                  //           height: 120,
                  //           child: ClipRRect(
                  //             borderRadius: BorderRadius.circular(100),
                  //             child: const Image(
                  //               image: AssetImage('assets/woman.png'),
                  //             ),
                  //           ),
                  //         ),
                  //         Positioned(
                  //           bottom: 0,
                  //           right: 0,
                  //           child: GestureDetector(
                  //             onTap: () {},
                  //             child: Container(
                  //               width: 35,
                  //               height: 35,
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(100),
                  //                 color: const Color(0xFFFEE400),
                  //               ),
                  //               child: const Icon(
                  //                 LineAwesomeIcons.camera,
                  //                 size: 20,
                  //                 color: Colors.black,
                  //               ),
                  //             ),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 50,
                  //     ),
                  //
                  //     // -- Form Fields
                  //     Form(
                  //         child: Column(
                  //           children: [
                  //             TextFormField(
                  //               initialValue: userData.fullName,
                  //               decoration: const InputDecoration(
                  //                 label: Text('Full Name'),
                  //                 prefixIcon: Icon(
                  //                   Icons.person_outline_rounded,
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 20,
                  //             ),
                  //             TextFormField(
                  //               initialValue: userData.email,
                  //               decoration: const InputDecoration(
                  //                 label: Text('Email'),
                  //                 prefixIcon: Icon(
                  //                   Icons.email_outlined,
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 20,
                  //             ),
                  //             TextFormField(
                  //               initialValue: userData.phoneNo,
                  //               decoration: const InputDecoration(
                  //                 label: Text('Phone Number'),
                  //                 prefixIcon: Icon(
                  //                   LineAwesomeIcons.phone,
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 20,
                  //             ),
                  //             TextFormField(
                  //               initialValue: userData.password,
                  //               decoration: InputDecoration(
                  //                 label: const Text('Password'),
                  //                 prefixIcon: const Icon(
                  //                   LineAwesomeIcons.lock,
                  //                 ),
                  //                 suffixIcon: IconButton(
                  //                   icon: const Icon(LineAwesomeIcons.eye_slash),
                  //                   onPressed: () {},
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 30,
                  //             ),
                  //
                  //             // -- Form Submit Button
                  //             SizedBox(
                  //               width: double.infinity,
                  //               child: ElevatedButton(
                  //                 onPressed: () => Get.to(() => const UpdateProfileScreen()),
                  //                 style: ElevatedButton.styleFrom(
                  //                   backgroundColor: const Color(0xFFFEE400),
                  //                   side: BorderSide.none,
                  //                   shape: const StadiumBorder(),
                  //                 ),
                  //                 child: const Text(
                  //                   'Edit Profile',
                  //                   style: TextStyle(
                  //                     color: Colors.black,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //             const SizedBox(
                  //               height: 30,
                  //             ),
                  //
                  //             // -- Created Date and Delete Button
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text.rich(
                  //                   TextSpan(
                  //                     text: 'Joined  ',
                  //                     style: const TextStyle(
                  //                       fontSize: 18,
                  //                     ),
                  //                     children: [
                  //                       TextSpan(
                  //                         text: DateFormat("dd MMMM yyy")
                  //                             .format(DateTime.now()),
                  //                         style: const TextStyle(
                  //                           fontWeight: FontWeight.bold,
                  //                           fontSize: 18,
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 ElevatedButton(
                  //                     onPressed: () {},
                  //                     style: ElevatedButton.styleFrom(
                  //                       backgroundColor: Colors.redAccent.withOpacity(0.1),
                  //                       elevation: 0,
                  //                       foregroundColor: Colors.red,
                  //                       shape: const StadiumBorder(),
                  //                       side: BorderSide.none,
                  //                     ),
                  //                     child: const Text('Delete')),
                  //               ],
                  //             ),
                  //           ],
                  //         )),
                  //   ],
                  // );



                }else if(snapshot.hasError){
                  return Center(child: Text(snapshot.error.toString()),);
                } else{
                  return const Center(child: Text('Something went wrong'),);
                }
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            },
          ),
        ),
      ),
    );
  }
}
