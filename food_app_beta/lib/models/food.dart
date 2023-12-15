class Food {
  String? image;
  String? name;
  String? description;
  double? price;
  String? introduce;
  double? rating;
  String? dateOrder;
  String? reviews;
  String? notification;
  String? time;
  String? titleNotification;

  Food({
    this.image,
    this.name,
    this.description,
    this.price,
    this.introduce,
    this.rating,
    this.dateOrder,
    this.reviews,
    this.notification,
    this.time,
    this.titleNotification,
  });
}
//Best Seller
class FoodBest {
  String? image;
  String? name;
  double? price;
  String? introduce;
  double? rating;

  FoodBest({
    this.image,
    this.name,
    this.price,
    this.introduce,
    this.rating,
  });
}