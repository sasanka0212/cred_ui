import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Infotile extends StatelessWidget {
  final String label;
  final bool highight;
  final String value;
  final IconData icon;
  const Infotile({
    super.key,
    required this.label,
    required this.value,
    required this.highight,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 0.2,
          ),
        ),
        child: Icon(icon, size: 16, color: Colors.grey),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: TextStyle(fontSize: 14),),
          if(highight) 
            Text(" • REFRESH AVAILABLE",
              style: GoogleFonts.raleway(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
            ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          /*
          if (highight)
            Text(
              '• REFRESH AVAILABLE',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            */
          SizedBox(width: highight ? 8 : 0),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
