import 'package:flutter/material.dart';

import '../responseModels/auth_response.dart';

class FetchUserComponent extends StatelessWidget {
  const FetchUserComponent({super.key, this.userData});

  final SignUpModel? userData;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white,
        ),
        borderRadius: (BorderRadius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userData?.name ?? '',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 2),
            Text(
              userData?.email ?? '',
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
