import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/app_color.dart';
import 'package:todo_app/screens/add_notes_screen.dart';
import 'package:todo_app/screens/widgets/shadow_circle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColor.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Column(
              children: [
               const SizedBox(height: 30,),
                Row(
                  children: [
                   InkWell(
                    onTap: (){
                      Get.to(AddNoteScreen());
                    },
                     child: ShadowCircle(
                      colour: Colors.white, radius: 25, icon: Icons.add,iconColor: Colors.black,),
                   ),
                   const SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                         Text('Welcome to Notes',style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w400
                  ),),
                  Text('have a nice day')
                      ],
                    ),
                  ],
                ),
                GridView.builder(
                  padding:const EdgeInsets.only(top: 20),
                  physics:const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 2/3
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         const Text('Title',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w500
                          ),),
                             ShadowCircle(colour: AppColor.blue, radius: 18, icon: Icons.delete,iconColor: Colors.white,), 
                          ],
                        ),
                         const Text('Today i need hgxgvsx sxhgvsxs xsggxv xsfxc xvsgxg ',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w400,height: 1.5
                          ),),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const Text('06/02/2021',style: TextStyle(
                            fontSize: 17,fontWeight: FontWeight.w500
                          ),),
                          ShadowCircle(colour:AppColor.red, radius: 20, icon: Icons.edit,iconColor: Colors.white,)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

