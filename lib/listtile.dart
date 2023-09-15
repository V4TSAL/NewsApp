import 'package:flutter_application_news/model/article_model.dart';
import 'package:flutter_application_news/pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customListTile(Article article, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticlePage(
                    article: article,
                  )));
    },
    child: Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 59, 59, 59),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 25.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              //let's add the height

              image: DecorationImage(
                  image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Container(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "source : ${article.source.name}",
              style: const TextStyle(
                  color: Color.fromARGB(255, 246, 245, 245),
                  fontSize: 12,
                  fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Container(
            // decoration: BoxDecoration(color: Colors.amber),
            child: Text(
              article.title,
              style: GoogleFonts.robotoSlab(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 249, 247, 247)),
            ),
          )
        ],
      ),
    ),
  );
}
