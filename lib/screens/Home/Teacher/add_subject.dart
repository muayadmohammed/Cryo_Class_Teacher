import 'dart:ui';
import '../../../components/route.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'home.dart';

class AddSubject extends StatefulWidget {
  TextStyle textStyleTitleEn, textStyleDesEn, textStyleTitleAr, textStyleDesAr;
  bool teacher;
  AddSubject({
    @required this.textStyleTitleEn,
    @required this.textStyleDesEn,
    @required this.textStyleTitleAr,
    @required this.textStyleDesAr,
    @required this.teacher,
  });
  @override
  _AddSubjectState createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translator.translate('addSubject'),
          style: translator.currentLanguage == 'en'
              ? widget.textStyleTitleEn
              : widget.textStyleTitleAr,
        ),
        elevation: 5,
        centerTitle: true,
      ),
      // backgroundColor: Colors.white.withOpacity(0.8),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width - 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: translator.translate('subjectName'),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: translator.currentLanguage == 'en'
                                ? widget.textStyleDesEn
                                : widget.textStyleDesAr,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      // height: 30,
                      width: size.width - 10,
                      // color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: translator.translate('description'),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: translator.currentLanguage == 'en'
                                ? widget.textStyleDesEn
                                : widget.textStyleDesAr,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 60,
                      width: size.width - 10,
                      // color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.attach_file),
                                onPressed: () {}),
                            Container(
                                child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      SlideRightRoute(
                                          widget: Home(
                                        teacher: widget.teacher,
                                      )),
                                    );
                                  },
                                  child: Text(
                                    translator.translate('cancel'),
                                    style: translator.currentLanguage == 'en'
                                        ? widget.textStyleDesEn
                                        : widget.textStyleDesAr,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        SlideRightRoute(
                                            widget: Home(
                                          teacher: widget.teacher,
                                        )),
                                      );
                                    },
                                    child: Container(
                                      width: 45,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                          child: Text(
                                        translator.translate('post'),
                                        style:
                                            translator.currentLanguage == 'en'
                                                ? widget.textStyleDesEn
                                                : widget.textStyleDesAr,
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
