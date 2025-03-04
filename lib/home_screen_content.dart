import 'package:flutter/material.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  final List<Map<String, dynamic>> categories = const [
    {"name": "Education", "color": 0xFF90CAF9},
    {"name": "Healthcare", "color": 0xFFFFCC80},
    {"name": "Environment", "color": 0xFFA5D6A7},
    {"name": "Animal Welfare", "color": 0xFFCE93D8},
  ];

  final List<Map<String, String>> ngos = const [
    {
      "name": "Bright Future Foundation",
      "category": "Education",
      "distance": "2.3 km away",
      "description": "Providing quality education to underprivileged children",
      "image": "assets/images/bright_future_foundation.jpg"
    },
    {
      "name": "Health For All",
      "category": "Healthcare",
      "distance": "3.1 km away",
      "description": "Free medical camps and healthcare services",
      "image": "assets/images/health_for_all..jpg"
    },
    {
      "name": "Green Earth Initiative",
      "category": "Environment",
      "distance": "1.5 km away",
      "description":
          "Promoting sustainable living and environmental conservation",
      "image": "assets/images/green_earth_initiative.jpeg"
    },
    {
      "name": "Animal Rescue League",
      "category": "Animal Welfare",
      "distance": "4.0 km away",
      "description": "Rescuing and rehabilitating stray and injured animals",
      "image": "assets/images/animal_rescue_league.png"
    },
    {
      "name": "Food For All",
      "category": "Healthcare",
      "distance": "2.8 km away",
      "description": "Providing nutritious meals to the homeless and needy",
      "image": "assets/images/food_for_all.jpeg"
    },
    {
      "name": "Clean Water Project",
      "category": "Environment",
      "distance": "3.5 km away",
      "description": "Ensuring access to clean and safe drinking water",
      "image": "assets/images/clean_water_project.png"
    },
    {
      "name": "Save The Children",
      "category": "Education",
      "distance": "1.2 km away",
      "description":
          "Supporting education and welfare of underprivileged children",
      "image": "assets/images/save_the_children.jpg"
    },
    {
      "name": "Wildlife Protection Fund",
      "category": "Animal Welfare",
      "distance": "5.0 km away",
      "description": "Protecting endangered species and their habitats",
      "image": "assets/images/wildlife_protection_fund.jpeg"
    },
    {
      "name": "Community Health Network",
      "category": "Healthcare",
      "distance": "2.0 km away",
      "description": "Providing healthcare services to underserved communities",
      "image": "assets/images/community_health_network.jpg"
    },
    {
      "name": "Eco Warriors",
      "category": "Environment",
      "distance": "3.0 km away",
      "description":
          "Advocating for environmental protection and sustainability",
      "image": "assets/images/eco_warriors.jpg"
    },
    {
      "name": "Youth Education Society",
      "category": "Education",
      "distance": "2.5 km away",
      "description": "Empowering youth through education and skill development",
      "image": "assets/images/youth_education_society.jpg"
    },
    {
      "name": "Animal Welfare Trust",
      "category": "Animal Welfare",
      "distance": "4.5 km away",
      "description": "Providing shelter and care for abandoned animals",
      "image": "assets/images/animal_welfare_trust.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find NGOs Near You",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Make a difference in your community",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search NGOs by name or cause...",
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            spacing: 10,
            children: categories
                .map(
                  (category) => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(category["color"]),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(category["name"]!),
                  ),
                )
                .toList(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Nearby NGOs",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: ngos.length,
            itemBuilder: (context, index) {
              final ngo = ngos[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NGOPage(ngo: ngo),
                    ),
                  );
                },
                child: Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            ngo["image"]!,
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          ngo["name"]!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text("${ngo["category"]} • ${ngo["distance"]}"),
                        const SizedBox(height: 8),
                        Text(
                          ngo["description"]!,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class NGOPage extends StatelessWidget {
  final Map<String, String> ngo;

  const NGOPage({super.key, required this.ngo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ngo["name"]!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                ngo["image"]!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              ngo["name"]!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "${ngo["category"]} • ${ngo["distance"]}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              ngo["description"]!,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
