import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liberty/app/modules/home/children/create_project/bloc/create_project_bloc.dart';
import 'package:liberty/app/widgets/app_button.dart';
import '../../../home.dart';

class CreateProjectPage extends StatelessWidget {
  const CreateProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<CreateProjectBloc, CreateProjectState>(
              builder: (context, state) {
            return AppBackButton(
              onPressed: () {
                context.read<HomeBloc>().add(OnHomeInitEvent());
              },
            );
          }),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Create project',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                letterSpacing: -0.24,
                color: Color(0xFF000000),
                height: 1.17),
          ),
          Expanded(
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFDADADA),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: _textField(
                          labelText: 'Project Name',
                          marginTop: 0.0,
                          marginBottom: 0.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: _textField(
                        labelText: 'Created (from)',
                        marginTop: 40,
                        prefix: const Icon(
                          Icons.calendar_month,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: _textField(
                        labelText: 'Created (to)',
                        marginTop: 40,
                        prefix: const Icon(Icons.calendar_month),
                      ),
                    ),
                  ],
                ),
                _textField(
                    labelText: 'Assign to:', hintText: 'Add team members'),
                _textField(labelText: 'Tags:'),
                Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 8,
                    ),
                    child: const Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        letterSpacing: -0.24,
                        height: 1.66,
                        color: Color(0xFFB1B0B0),
                      ),
                    )),
                TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: null,
                    labelText: '',
                    focusedBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: const BorderSide(
                        color: Color(0xFF0184D6),
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      gapPadding: 0,
                      borderSide: const BorderSide(
                        color: Color(0xFFE0E4EB),
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AppButton(
              title: 'Create project',
              onPressed: () {
                context.read<HomeBloc>().add(OnHomeProjectEvent());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _textField(
      {required String labelText,
      String? hintText,
      Widget? prefix,
      double marginTop = 20,
      double marginBottom = 20}) {
    return Container(
      margin: EdgeInsets.only(top: marginTop, bottom: marginBottom),
      child: TextField(
        decoration: InputDecoration(
          // prefix: prefix,
          prefixIcon: prefix,
          contentPadding: const EdgeInsets.only(right: 8, top: 8),
          alignLabelWithHint: false,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
        ),
      ),
    );
  }
}
