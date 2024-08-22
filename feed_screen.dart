import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Feed",
          style: TextStyles.appBarTitle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Text(
            "Back",
            style: TextStyles.leadingButton,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Add filter functionality here
            },
            child: const Text(
              "Filter",
              style: TextStyles.actionButton,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "Search",
                hintStyle: TextStyles.hintText,
                fillColor: AppColors.textFieldFill,
                filled: true,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      // Container behind the ListTile
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              bottomLeft: Radius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      // ListTile on top of the container
                      const ListTile(
                        contentPadding: EdgeInsets.only(
                            left: 60), // Adjust padding so text is not covered
                        title: Text('Header'),
                        subtitle: Text(
                          'He\'ll want to use your yacht, and I don\'t want this thing smelling like fish.',
                        ),
                        trailing: Text('8m ago'),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                ),
              ),
              width: 343, // Width specified
              height: 227.98, // Height specified
              child: const SizedBox.shrink(), // Empty container
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: AppColors.activeIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: AppColors.inactiveIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: AppColors.inactiveIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: AppColors.inactiveIcon),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: AppColors.inactiveIcon),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: AppColors.activeIcon,
        unselectedItemColor: AppColors.inactiveIcon,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          // Handle tap events here
        },
      ),
    );
  }
}

class TextStyles {
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle leadingButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.buttonColor,
  );

  static const TextStyle actionButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.buttonColor,
  );

  static const TextStyle hintText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xffBDBDBD),
  );
}

class AppColors {
  static const Color buttonColor = Color(0xff5DB075);
  static const Color textFieldFill = Color(0xffF6F6F6);
  static const Color activeIcon = Color(0xff5DB075);
  static const Color inactiveIcon = Color(0xffE0E0E0);
}
