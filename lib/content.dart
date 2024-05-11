class UnboardingCountent{
  final String image;
  String title;
  String discription;

  UnboardingCountent({ required this.image ,  required this.title ,  required this.discription});
}

List <UnboardingCountent> contents =[
  UnboardingCountent(
      title: 'Welcome',
      image: 'assets/images/bbh.png.jpg',
      discription: "Welcome to butterflies hotel! "
          "Your ultimate destination for hassle-free hotel bookings."
  ),

  UnboardingCountent(
      title: 'Book',
      image: 'assets/images/3.png.jpg',
      discription: "book your hotel in minutes! Select your preferred room, "
          "enter your details, and secure your reservation with ease "
  ),

  UnboardingCountent(
      title: 'Ready! ',
      image: 'assets/images/1.png.jpg',
      discription: "Ready to start exploring? Let's find your perfect hotel! "
          "Get started now and make your next trip unforgettable."
  ),

  UnboardingCountent(
      title: 'Keep track',
      image: 'assets/images/6.png.jpg',
      discription: "Keep track of your bookings, view past stays, "
          "and manage your preferences in your user profile. Your personalized hotel experience starts here. "
  ),


];