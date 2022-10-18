import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_assets.dart';
import 'package:todo_app/constants/app_color.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isClick? Row(
            children: [
              ImageIcon(image: AppAssets.galleryIcon,width: 60,height: 60,),
              const Text('Gallery'),
            ],
          ):const SizedBox(),
          const SizedBox(height: 15,),
          isClick? Row(
            children: [
              ImageIcon(image: AppAssets.camIcon,width: 60,height: 60,),
              const Text('Camera')
            ],
          ):const SizedBox(),
          const SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              setState(() {
                isClick =! isClick;
              });
            },
            child: ImageIcon(image: AppAssets.picIcon,
            width: 60,height: 60, 
            color:isClick ? AppColor.red:Colors.white)),
        ],
      ),
      backgroundColor: AppColor.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    ImageIcon(image: AppAssets.backIcon,),
                    const Spacer(),
                    ImageIcon(image: AppAssets.redoIcon,),
                    ImageIcon(image: AppAssets.undoIcon,),
                    ImageIcon(image: AppAssets.deleteIcon,),
                    ImageIcon(image: AppAssets.saveIcon,),
                  ],
                ),
              ),
             Container(margin: EdgeInsets.symmetric(vertical: 20),
               child:const TextField(maxLines: null,
                decoration: InputDecoration(isDense: true,
                contentPadding: EdgeInsets.all(0),
                  border: InputBorder.none,
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.w600,
                    color: Colors.black
                  )
                ),
               ),
             ),
             Container(
               child:const TextField(maxLines: null,
                decoration: InputDecoration(isDense: true,
                contentPadding: EdgeInsets.all(0),
                  border: InputBorder.none,
                  hintText: 'Enter Your Text here',
                  hintStyle: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w400,
                    color: Colors.black
                  )
                ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageIcon extends StatelessWidget {
  ImageIcon({
    Key? key,required this.image,
    this.height = 40,
    this.width = 40,
    this.color = Colors.white,
  }) : super(key: key);
  String image;
  double width;double height;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 10),
      width: width,height: height,
      padding:const EdgeInsets.all(10),
     decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(blurRadius: 4,spreadRadius: 2,
        color: Colors.grey.shade300)
      ],
      borderRadius: BorderRadius.circular(35),
        color: color,
      ),
      child: Image.asset(image),
    );
  }
}