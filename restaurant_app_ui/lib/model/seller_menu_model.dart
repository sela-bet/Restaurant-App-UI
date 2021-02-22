class MenuModel {
  String foodName;
  String foodImage;
  String foodPrice;
  String menuDetail;

  MenuModel({this.foodName, this.foodImage, this.foodPrice, this.menuDetail});
}

List<MenuModel> menuList = [
  MenuModel(
      foodName: 'BBQ set, Family Set',
      foodImage: 'assets/images/stake.jpg',
      foodPrice: '12 \$',
      menuDetail: 'High proportion'),
  MenuModel(
      foodName: 'BBQ Khmer, Vip Set',
      foodImage: 'assets/images/stake2.jpg',
      foodPrice: '20 \$',
      menuDetail: 'High proportion'),
  MenuModel(
      foodName: 'Grill , Personal Set',
      foodImage: 'assets/images/stake3.jpg',
      foodPrice: '5 \$',
      menuDetail: 'High proportion'),
];
