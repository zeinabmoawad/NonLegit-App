import 'package:flutter/material.dart';
//import 'package:flutter_code_style/analysis_options.yaml';
import 'package:responsive_sizer/responsive_sizer.dart';

class OthersProfileAbout extends StatelessWidget {
  final int numOfPosts;

  final int numOfComments;
  final String description;
  OthersProfileAbout(this.numOfPosts, this.numOfComments, 
      this.description);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 120),
          height: (description == null||description == '')
              ? 36.h
              : (36 + (description.length / 42) + 4).h,
          width: 100.w,
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text('$numOfPosts'),
                        subtitle: const Text(
                          'Post Karma',
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('$numOfComments'),
                        subtitle: const Text('Comment Karma'),
                      ),
                    ),
                  ],
                )),
                Container(
                  margin: const EdgeInsets.only(right: 15,left: 15,top: 15),
                  width: 100.w,
                  height: (description == null||description == '')
                      ? 0.h
                      : (0 + (description.length / 42) + 7).h,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(description,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 13))
                      ]),
                ),
             ListTile(
                            leading: const Icon(
                              size: 25,
                              Icons.local_post_office_outlined,
                              color: Colors.grey,
                            ),
                            onTap: () {
                              return Navigator.pop(context);
                            },
                            title: const Text(
                              'Send a message',
                              style: TextStyle(
                                  color: Colors.black,
                                  ),
                            ),
                          ),
              ]),
        ),
      ],
    );
  }
}
