class MediaModel {
  String seller_name;
  String post_date;
  String seller_profile;
  String product_image;
  String product_desc;
  String loved;
  String eaten;
  String seller_rate;

  MediaModel({
    this.seller_name,
    this.post_date,
    this.seller_profile,
    this.product_desc,
    this.loved,
    this.eaten,
    this.seller_rate,
    this.product_image,
  });
}

List<MediaModel> mediaList = [
  MediaModel(
    seller_name: 'Vouchlang Kh -Store',
    post_date: 'just now',
    seller_profile: 'assets/user_profile/vlang.jpg',
    product_image: 'assets/images/BBQ.jpg',
    product_desc: '...',
    loved: '12 k',
    eaten: '1.1 k',
  ),
  MediaModel(
      seller_name: 'Finan Instance -Store',
      post_date: 'just now',
      seller_profile: 'assets/user_profile/finan.jpg',
      product_image: 'assets/images/burger.jpg',
      product_desc: '...',
      loved: '900 k',
      eaten: '10 M',
      seller_rate: '...'),
  MediaModel(
      seller_name: 'Sanny Eat -Healthy',
      post_date: 'just now',
      seller_profile: 'assets/user_profile/sanny.jpg',
      product_image: 'assets/images/salad.jpg',
      product_desc: '...',
      loved: '13 k',
      eaten: '2.1 k',
      seller_rate: '...'),
];
