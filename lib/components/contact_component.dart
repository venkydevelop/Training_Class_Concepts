import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class ContactComponent extends StatelessWidget {
  const ContactComponent({super.key, this.contact});

  final Contact? contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          contact?.avatar != null
              ? CircleAvatar(
                  backgroundImage: MemoryImage(contact!.avatar!),
                  radius: 20,
                )
              : CircleAvatar(
                  radius: 30,
                  child: Text(
                    contact?.initials() ?? '',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact?.displayName ?? '',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                contact?.phones?.isNotEmpty ?? false
                    ? contact?.phones?.first.value ?? ''
                    : '',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
