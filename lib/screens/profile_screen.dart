import 'package:cred_ui/colors.dart';
import 'package:cred_ui/widgets/infotile.dart';
import 'package:cred_ui/widgets/reward_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sms_outlined, size: 18, color: Colors.grey,),
                  SizedBox(width: 4,),
                  Text("Support", style: GoogleFonts.raleway(
                    fontSize: 12,
                    color: Colors.grey,
                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: backgroundColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black, 
                        radius: 35,
                        child: Image.asset("assets/images/profile.jpg", height: 60, width: 60),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sasanka Kundu',
                            style: GoogleFonts.outfit(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Member since May, 2025',
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 0.3,
                          ),
                        ),
                        child: Icon(Icons.edit, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.white, width: 0.15),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 0.5,
                            ),
                          ),
                          child:
                              Icon(Icons.directions_car, color: Colors.white),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'get to know your vehicles, inside out',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "CRED garage",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 16, color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  _buildInfoRow('credit score', '757', Icons.speed,
                      highlight: true),
                  Divider(
                    color: Colors.white,
                    thickness: 0.1,
                  ),
                  _buildInfoRow(
                      'lifetime cashback', '₹3', Icons.currency_rupee),
                  Divider(
                    color: Colors.white,
                    thickness: 0.1,
                  ),
                  _buildInfoRow(
                      'bank balance', 'check', Icons.fast_forward_sharp),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'YOUR REWARDS & BENEFITS',
                    style: GoogleFonts.raleway(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 12),
                  RewardTile(
                    label: 'cashback balance',
                    subTitle: '₹0',
                    icon: Icons.point_of_sale,
                    highight: false,
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.1,
                  ),
                  RewardTile(
                    label: 'coins',
                    subTitle: '26,46,583',
                    icon: Icons.point_of_sale,
                    highight: false,
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.1,
                  ),
                  RewardTile(
                    label: 'win upto Rs 1000',
                    subTitle: 'refer and earn',
                    icon: Icons.point_of_sale,
                    highight: false,
                  ),
                  //_buildInfoRow('coins', '26,46,583'),
                  //_buildInfoRow('win upto Rs 1000', 'refer and earn'),
                  SizedBox(height: 24),
                  Text('TRANSACTIONS & SUPPORT',
                      style: GoogleFonts.raleway(
                          color: Colors.grey,)),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('all transactions'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, IconData icon,
      {bool highlight = false}) {
    return Infotile(
        label: label, value: value, icon: icon, highight: highlight);
  }
}
