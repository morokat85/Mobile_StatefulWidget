import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          const FavoriteCard(isFavorite: true),
          const FavoriteCard(isFavorite: false),
          const FavoriteCard(isFavorite: true),
        ],
      ),
    ),
  ),
);

class FavoriteCard extends StatefulWidget {
  final bool isFavorite;

  const FavoriteCard({super.key, required this.isFavorite});

  @override
  State<FavoriteCard> createState() {
    return _FavoriteCardState();
  }
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  void onFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  IconData get icon {
    if (isFavorite) {
      return Icons.favorite;
    } else{
    return Icons.favorite_border;
    }
  }

  Color get buttonColor {
    if (isFavorite) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // YOUR CODE
      padding: EdgeInsets.all(12),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("title"), Text("decription")],
            ),
          ),
          IconButton(
            onPressed: onFavorite,
            icon: Icon(
              icon,
              color: buttonColor,
            ),
          ),
        ],
      ),
    );
  }
}
