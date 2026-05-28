import 'package:flutter/material.dart';
import 'detail_page.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  Widget movieCard(
    BuildContext context,
    String image,
    String genre,
    String title,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              image: image,
            ),
          ),
        );
      },

      child: Column(
        children: [
          Container(
            width: 140,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 6),

          Container(
            width: 120,
            padding: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
            ),
            child: Text(
              genre,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),

                  const Text(
                    'CINEFRAME',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Profile
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('images/foto3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Text(
                    'Christopher Nolan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Movie Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.78,

                  children: [
                    movieCard(
                      context,
                      'images/interstellar.jpg',
                      'Sci-Fi',
                      'Interstellar',
                    ),

                    movieCard(
                      context,
                      'images/prestige.jpg',
                      'Comedy',
                      'The Prestige',
                    ),

                    movieCard(
                      context,
                      'images/oppenheimer.jpg',
                      'Drama',
                      'Oppenheimer',
                    ),

                    movieCard(
                      context,
                      'images/darkknight.jpg',
                      'Action',
                      'The Dark Knight',
                    ),

                    movieCard(
                      context,
                      'images/500day.jpg',
                      'Romance',
                      '500 days of Summer',
                    ),

                    movieCard(
                      context,
                      'images/onepiece.jpg',
                      'Action',
                      'One Piece',
                    ),

                    movieCard(
                      context,
                      'images/jjk.jpg',
                      'Action',
                      'Jujutsu Kaisen 0',
                    ),

                    movieCard(
                      context,
                      'images/getout.webp',
                      'Thriller',
                      'Get Out',
                    ),

                    movieCard(
                      context,
                      'images/avengers.jpg',
                      'Action',
                      'TheAvengers',
                    ),

                    movieCard(
                      context,
                      'images/spiderman.jpg',
                      'Action',
                      'Spiderman',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}