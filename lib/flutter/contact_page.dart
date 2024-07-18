import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:training_session/components/contact_component.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> contacts = [];

  Future<void> getContacts() async {
    PermissionStatus permissionStatus = await Permission.contacts.request();

    if (permissionStatus.isGranted) {
      try {
        List<Contact> contact = await ContactsService.getContacts();
        setState(() {
          contacts = contact;
          print("Getting the contacts : $contact");
        });
        print(contacts);
        print("Contact Reecived: ${contacts.length}");
      } catch (e) {
        print(e);
      }
    } else {
      print("Contacts Permission denied");
    }
  }

  @override
  void initState() {
    super.initState();
    getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: contacts.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      showBottomSheet(contacts[index]);
                    },
                    child: ContactComponent(contact: contacts[index]));
              }),
    );
  }

  void showBottomSheet(Contact? contact) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                    height: 20,
                  ),
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
              ),
            ),
          );
        });
  }
}
