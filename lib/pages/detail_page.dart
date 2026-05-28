import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String title;
  final String image;

  const DetailPage({
    super.key,
    required this.title,
    required this.image,
  });

  Widget movieList(String text) {

    return Column(
      children: [

        const Divider(
          thickness: 1,
          color: Colors.black45,
        ),

        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 10),

          child: Align(
            alignment: Alignment.centerLeft,

            child: Text(
              text,

              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 10),

              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),

              const SizedBox(height: 25),

              Center(
                child: Container(
                  width: 300,
                  height: 170,

                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10),

                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              movieList('$title (2024)'),

              movieList('Oppenheimer (2023)'),

              movieList('Parasite (2019)'),

              movieList('The Godfather (1972)'),

              movieList('The Dark Knight'),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(

                  onPressed: () {},

                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),

                  child: const Text(
                    'WATCH TRAILER',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 50,

                child: OutlinedButton(

                  onPressed: () {},

                  child: const Text(
                    'MORE DETAILS',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}