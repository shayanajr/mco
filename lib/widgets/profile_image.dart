
import 'package:flutter/material.dart';
import 'package:mco/core/base/base_variable.dart';
import 'package:mco/core/controllers/main_controller.dart';

class ProfileImage extends StatelessWidget {
  final String? name;

  const ProfileImage({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MainController.ratio * 133,
          height: MainController.ratio * 133,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(Variable.imageVar.profileImage),
              alignment: Alignment.bottomCenter,
              scale: 4.0,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0, 1),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32.0),
        Text(
          name ?? '',
          style: const TextStyle(fontSize: 25.0, color: Colors.grey),
        ),
      ],
    );
  }
}
