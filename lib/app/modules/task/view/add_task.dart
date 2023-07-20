import 'package:flutter/material.dart';
import 'package:liberty/app/widgets/app_button.dart';
import 'package:liberty/app/widgets/app_textfield.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 50,bottom: 20
        ),
        child: Column(

          children: [
            AppBackButton(),
            Expanded(
              child: ListView(
                children: [
                  Text('Add Task'),
                  AppTextField1(labelText: 'Task Name'),
                  AppTextField1(labelText: 'Assign Task:'),
                  AppTextField1(labelText: 'Tags:'),
                  Text('Comment:'),

                ],
              ),
            ),
             SizedBox(
                 width: MediaQuery.of(context).size.width,
                 child:AppButton(title: 'Add task', onPressed: (){},))
          ],
        ),
      ),
    );
  }
}
