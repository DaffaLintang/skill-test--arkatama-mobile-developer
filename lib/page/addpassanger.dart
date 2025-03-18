import 'package:akartama/page/login.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPassangerPage extends StatefulWidget {
  const AddPassangerPage({super.key});

  @override
  State<AddPassangerPage> createState() => _AddPassangerPageState();
}

class _AddPassangerPageState extends State<AddPassangerPage> {
  final List<String> travelItems = ['Malang', 'Bali'];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(21, 114, 211, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 330,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(31, 99, 170, 1),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(1000),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            Container(
              width: 230,
              height: 280,
              decoration: BoxDecoration(
                color: Color.fromRGBO(28, 89, 154, 1),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(1000),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20),
              child: GestureDetector(
                onTap: () {
                  Get.to(LoginPage());
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: Center(
                    child: Transform.translate(
                      offset: Offset(2, 0),
                      child: Icon(Icons.arrow_back_ios, size: 15),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "Add Passenger",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(84, 84, 85, 1),
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Pasengger*"),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 224, 224, 224),
                            ),
                          ),
                          labelText: "Name - Age - City",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Travel Services*"),
                      DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 224, 224, 224),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        hint: const Text(
                          'Choose Service',
                          style: TextStyle(fontSize: 14),
                        ),
                        items:
                            travelItems
                                .map(
                                  (item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                )
                                .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'Please select gender.';
                          }
                          return null;
                        },
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedValue = value.toString();
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black45,
                          ),
                          iconSize: 24,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Pickup Location*"),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 224, 224, 224),
                            ),
                          ),
                          labelText: "Pickup Location",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Whatsapp Number"),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 224, 224, 224),
                            ),
                          ),
                          labelText: "Whatsapp Number",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Writing format without country code, must use active cellphone number",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(188, 188, 188, 1),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 25,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(
                                  color: Color.fromRGBO(195, 211, 226, 1),
                                  width: 2,
                                ),
                              ),
                            ),
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(33, 33, 67, 1),
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 25,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            child: Text(
                              "Add Passenger",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
