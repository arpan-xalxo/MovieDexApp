import 'package:ani_dex_app/constants/api_key.dart';
import 'package:ani_dex_app/constants/colors.dart';
import 'package:ani_dex_app/model/movie.dart';
import 'package:ani_dex_app/widget/back_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: Backbtn(),
            backgroundColor: Colours.scaffoldBgColor,
            expandedHeight: 500,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsets.fromLTRB(16, 2, 1, 2),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 2, 20, 3),
                  color: Color.fromARGB(255, 5, 4, 4).withOpacity(.5),
                  child: Text(
                    movie.title,

                    style: TextStyle(letterSpacing: 0.5, fontSize: 15),

                    // style: GoogleFonts.belleza(
                    //     fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
                child: Image.network(
                  '${ApiKey.imagePath}${movie.posterPath}',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: GoogleFonts.openSans(
                        fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    movie.overview,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text(
                                'Released date: ',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                movie.releaseDate,
                                style: GoogleFonts.roboto(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text(
                                'Rating: ',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '${movie.voteAverage.toStringAsFixed((1))}/10',
                                style: GoogleFonts.roboto(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
