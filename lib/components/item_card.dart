import "package:flutter/material.dart";

class SingleChildItemCard extends StatelessWidget {
  const SingleChildItemCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imageURL,
      required this.onPressed});

  final String title;
  final String description;
  final String imageURL;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.network(imageURL),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(height: 3, fontSize: 20),
            ),
            Row(
              children: <Widget>[
                Flexible(child: Text(description)),
              ],
            ),
            Row(
              children: <Widget>[
                TextButton(onPressed: onPressed, child: const Text("Read more"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
