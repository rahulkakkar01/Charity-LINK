import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  final bool isNGOUser;

  const EducationPage({super.key, required this.isNGOUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/logo.png"), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(241, 254, 1, 1).withOpacity(0.8),
                  Color.fromARGB(255, 255, 152, 8).withOpacity(0.8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Content
          isNGOUser ? AddStudentPage() : DonationPage(),
        ],
      ),
    );
  }
}

class AddStudentPage extends StatefulWidget {
  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _donationAmountController =
      TextEditingController();
  final TextEditingController _donationForController = TextEditingController();
  final List<Map<String, String>> _students = [];

  void _addStudent() {
    if (_nameController.text.isNotEmpty &&
        _donationAmountController.text.isNotEmpty &&
        _donationForController.text.isNotEmpty) {
      setState(() {
        _students.add({
          'name': _nameController.text,
          'amount': _donationAmountController.text,
          'for': _donationForController.text,
        });
        _nameController.clear();
        _donationAmountController.clear();
        _donationForController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Add Student',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Student Name',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _donationAmountController,
            decoration: InputDecoration(
              labelText: 'Donation Money Required',
              prefixText: '₹ ',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _donationForController,
            decoration: InputDecoration(
              labelText: 'Donation For What',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            ),
            onPressed: _addStudent,
            child: const Text(
              'Add Student',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Students',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _students.length,
              itemBuilder: (context, index) {
                final student = _students[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    title: Text(student['name']!),
                    subtitle: Text(
                        'Needs ₹${student['amount']} for ${student['for']}'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Handle donation logic
                      },
                      child: const Text('Donate'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DonationPage extends StatelessWidget {
  final List<Map<String, String>> fakeStudents = [
    {
      "name": "Priyanshu Kumar Sharma",
      "description": "Needs donation for school supplies",
      "amount": "₹500"
    },
    {
      "name": "Prajwal Ulli",
      "description": "Needs donation for tuition fees",
      "amount": "₹1000"
    },
    {
      "name": "Gaurav Salunke",
      "description": "Needs donation for books",
      "amount": "₹300"
    },
    {
      "name": "Rahul Kakkar",
      "description": "Needs donation for uniform",
      "amount": "₹400"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Students Needing Donations',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: fakeStudents.length,
              itemBuilder: (context, index) {
                final student = fakeStudents[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    title: Text(student["name"]!),
                    subtitle: Text(student["description"]!),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Handle donation logic
                      },
                      child: Text('Donate ${student["amount"]}'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
