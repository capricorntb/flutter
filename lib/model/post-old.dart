class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author; 
  final String imageUrl;
}

final List<Post> posts = [
  Post(
    title: 'dart cookbook',
    author: 'pony',
    imageUrl: 'http://dart.goodev.org/assets/covers/dart-cookbook-ceca13c8def69dedd85a8e1f07f4d468588ff923459bb562575403f8fdfdc0fc.jpg',
  ),
  Post(
    title: 'dart-programming',
    author: 'john',
    imageUrl: 'http://dart.goodev.org/assets/covers/dart-programming-language-8b8de43f050ae53fcfc477051363ae2c41515b443ffa7f9c4998a06be5db2589.jpg',
  ),
  Post(
    title: 'learning dart',
    author: 'david',
    imageUrl: 'http://dart.goodev.org/assets/covers/learning-dart-a03a3eca556e403d8a908cedd2b37eddb276dbae4d3c8195e1f22586573fd11a.png',
  ),
];