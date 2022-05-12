import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CompanyStdImgCarousel extends StatefulWidget {
  const CompanyStdImgCarousel({Key? key}) : super(key: key);

  @override
  State<CompanyStdImgCarousel> createState() => _CompanyStdImgCarouselState();
}

class _CompanyStdImgCarouselState extends State<CompanyStdImgCarousel> {
  int activeindex = 0;
  var images = [
    'https://d3nn873nee648n.cloudfront.net/900x600/19817/300-SM966202.jpg',
    'https://d3nn873nee648n.cloudfront.net/900x600/19597/13-SM945939.jpg',
    'https://d3nn873nee648n.cloudfront.net/900x600/19556/220-SM941468.jpg',
    'https://d3nn873nee648n.cloudfront.net/900x600/19556/220-SM941494.jpg',
    'https://d3nn873nee648n.cloudfront.net/900x600/19556/220-SM941467.jpg',
    'https://d3nn873nee648n.cloudfront.net/900x600/19551/19-SM940652.jpg',
    'https://d3nn873nee648n.cloudfront.net/900x600/19532/16-BX938289.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              var image = images[index];

              return Container(
                //margin: EdgeInsets.symmetric(horizontal: 12),
                color: Colors.grey,
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(
                height: 250,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                onPageChanged: (index, reason) => {
                      setState(() => {activeindex = index}),
                    }),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: AnimatedSmoothIndicator(
              activeIndex: activeindex,
              count: images.length,
              effect: ExpandingDotsEffect(
                dotHeight: 3,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
