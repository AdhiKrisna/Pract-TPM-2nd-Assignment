import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas2/constants/constant_colors.dart';
import 'package:tugas2/data/cats.dart';

class CatListPage extends StatefulWidget {
  const CatListPage({super.key});

  @override
  State<CatListPage> createState() => _CatListPageState();
}

class _CatListPageState extends State<CatListPage> {
  List<bool> isFavorite = List.generate(catList.length, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cat List',
          style: GoogleFonts.poppins(
            color: ConstantColors.goldFont,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF241963),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ConstantColors.bodyColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 25,
              crossAxisCount: 1,
            ),
            itemCount: catList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/cat_detail_page',
                    arguments: catList[index],
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ConstantColors.blueCardHeader,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: ConstantColors.goldFont,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            catList[index].name,
                            style: GoogleFonts.poppins(
                              color: ConstantColors.whiteFont,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            catList[index].breed,
                            style: GoogleFonts.poppins(
                              color: ConstantColors.whiteFont,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: ClipOval(
                              child: Image.network(
                                catList[index].pictureUrl,
                                width: MediaQuery.of(context).size.width * 0.75,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Age: ${catList[index].age}',
                            style: GoogleFonts.poppins(
                              color: ConstantColors.whiteFont,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Gender: ${catList[index].sex}',
                            style: GoogleFonts.poppins(
                              color: ConstantColors.whiteFont,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: IconButton(
                        icon: Icon(
                          size: 40,
                          isFavorite[index]
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: ConstantColors.goldFont,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite[index] = !isFavorite[index];
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
