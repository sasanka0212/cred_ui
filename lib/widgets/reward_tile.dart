import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardTile extends StatelessWidget {
  final String label;
  final bool highight;
  final String subTitle;
  final IconData icon;
  const RewardTile({super.key, required this.label, required this.highight, required this.subTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      /*
      leading: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
        ),
        child: Icon(icon, size: 16, color: Colors.grey),
      ),
      */
      title: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w900,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: GoogleFonts.montserrat(
          color: Colors.grey,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (highight)
            Text(
              '• REFRESH AVAILABLE',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          SizedBox(width: highight ? 8 : 0),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}