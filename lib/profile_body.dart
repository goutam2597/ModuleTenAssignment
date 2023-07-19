import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? buildPortraitLayout()
            : buildLandscapeLayout();
      },
    );
  }

  Widget buildPortraitLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(height: 350, width: 350, child: ProfilePicture()),
        ),
        SizedBox(height: 10),
        DisplayName(),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(10),
          child: UserBio(),
        ),
        SizedBox(height: 10),
        Expanded(child: GalleryPictures()),
      ],
    );
  }

  Widget buildLandscapeLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(height: 220, width: 220, child: ProfilePicture()),
            ),
            SizedBox(height: 10),
            DisplayName(),
          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: UserBio(),
              ),
              Expanded(child: GalleryPictures()),
            ],
          ),
        ),
      ],
    );
  }
}
class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
            'https://img.freepik.com/vector-premium/diseno-avatar-persona_24877-38133.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class DisplayName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'John Doe',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class UserBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Passionate explorer, always seeking new adventures and experiences. Avid reader, fascinated by the world\'s diverse cultures and histories.',
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }
}

class GalleryPictures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: 12, // Replace with the actual number of pictures
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(
                'https://img.freepik.com/vector-premium/diseno-avatar-persona_24877-38133.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
