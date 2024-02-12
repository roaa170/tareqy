import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController subject=TextEditingController();
  TextEditingController description=TextEditingController();
  File ?image;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Tareqy Support",style: TextStyle(color:  Color(0xff05035b)),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                      child: Text("Your Name",style: TextStyle(fontSize: 17),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
        
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        controller: name,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
        
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                      child: Text("Email",style: TextStyle(fontSize: 17),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
        
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                      child: Text("Subject",style: TextStyle(fontSize: 17),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        controller: subject,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
        
                          prefixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.text_snippet_outlined,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                      child: Text("Description",style: TextStyle(fontSize: 17),),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        maxLines: 4,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        controller: description,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          isDense: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    image==null
                        ? Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ),
                        child: SizedBox(
                          height: 120,
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(
                                horizontal: 8.0),
                            child: GestureDetector(
                              onTap: () async {
                                XFile? x = await ImagePicker()
                                    .pickImage(
                                    source: ImageSource
                                        .gallery);
                                  // Convert XFile to File
                                 setState(() {
                                   image =
                                       File(x!.path);
                                 });
                              },
                              child: Image.asset(
                                'assets/images/add_image.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                        : Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5),
                        child: Container(
                          width: 100,
                          height: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(
                                    image ??
                                        File(""))),
                            borderRadius:
                            const BorderRadius.all(
                                Radius.circular(8.0)),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                image = null;
                              });
                            },
                            child: const Icon(
                              Icons.remove_circle,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        // width: MediaQuery.of(context).size.width/1.25,
        
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),),
                            backgroundColor: const Color(0xff05035b),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Send",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
