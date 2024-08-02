import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SharedNavbarWidget extends StatefulWidget {
  final Function(int) onItemSelected;

  const SharedNavbarWidget({super.key, required this.onItemSelected});

  @override
  State<SharedNavbarWidget> createState() => _SharedNavbarWidgetState();
}

class _SharedNavbarWidgetState extends State<SharedNavbarWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 350,
        height: 60,
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(Iconsax.home, 0),
            _buildNavItem(Iconsax.search_favorite, 1),
            _buildNavItem(Iconsax.add_square, 2),
            _buildNavItem(Iconsax.message, 3),
            _buildNavItem(Iconsax.user_cirlce_add, 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          widget.onItemSelected(
              index); // Call the callback with the selected index
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Icon(
          icon,
          color: _selectedIndex == index
              ? Color.fromARGB(255, 28, 119, 238)
              : Colors.black,
          size: _selectedIndex == index
              ? 24.0
              : 20.0, // Optional animation for size change
        ),
      ),
    );
  }
}
