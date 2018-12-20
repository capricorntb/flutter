class Post {
  Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;

  bool selected = false;
}

final List<Post> posts = [
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/candy-shop.jpg',
  ),
  Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
  ),
  Post(
    title: 'Contained',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/contained.jpg',
  ),
  Post(
    title: 'Dragon',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/dragon.jpg',
  ),
  Post(
    title: 'Free Hugs',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/free_hugs.jpg',
  ),
  Post(
    title: 'Gravity Falls',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/gravity-falls.png',
  ),
  Post(
    title: 'Icecream Truck',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/icecreamtruck.png',
  ),
  Post(
    title: 'keyclack',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.org/images/keyclack.jpg',
  ),
];