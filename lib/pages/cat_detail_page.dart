import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas2/constants/constant_colors.dart';
import 'package:tugas2/model/Cat.dart';

class CatDetailPage extends StatelessWidget {
  const CatDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Cat cat = ModalRoute.of(context)!.settings.arguments as Cat;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cat.name,
          style: GoogleFonts.poppins(
            color: ConstantColors.goldFont,
            fontWeight: FontWeight.bold,
          ),
        ),
        foregroundColor: ConstantColors.goldFont,
        centerTitle: true,
        backgroundColor: Color(0xFF241963),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: ConstantColors.bodyColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'A ${cat.breed} Cat',
                  style: GoogleFonts.poppins(
                    color: ConstantColors.whiteFont,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ConstantColors.blueCardHeader,
                    border: Border.all(
                      color: ConstantColors.goldFont,
                      width: 2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      cat.pictureUrl,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Birthday: ${cat.birthday.day}-${cat.birthday.month}-${cat.birthday.year}',
                  style: GoogleFonts.poppins(
                    color: ConstantColors.whiteFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Age: ${cat.age} years old',
                  style: GoogleFonts.poppins(
                    color: ConstantColors.whiteFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Gender: ${cat.sex}',
                  style: GoogleFonts.poppins(
                    color: ConstantColors.whiteFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Color: ${cat.color}',
                  style: GoogleFonts.poppins(
                    color: ConstantColors.whiteFont,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Container(height: 2, color: ConstantColors.goldFont),
                const SizedBox(height: 10),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Vaccines: ${cat.vaccines.isNotEmpty ? cat.vaccines.join(', ') : 'None'}',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: ConstantColors.goldFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Characteristics: ${cat.characteristics.join(', ')}',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: ConstantColors.goldFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(height: 2, color: ConstantColors.goldFont),
                    const SizedBox(height: 10),
                    Text(
                      '${cat.background}, ${cat.background}, ${cat.background}',
                      style: GoogleFonts.poppins(
                        color: ConstantColors.goldFont,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
