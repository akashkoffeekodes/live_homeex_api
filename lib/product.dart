class ChatModel {
  final String image;
  final String price;
  final String title;
  final String subtitle ;
  final String message;

  ChatModel({this.image,this.price, this.title, this.subtitle, this.message});
}

class dummydata{


static final List<ChatModel> dummyData = [
  ChatModel(
    image: "assets/image/image.png",
    price: "85,00,000 L",
    title: "Smart Home",
    subtitle: "2 & 3 BHK Asha Residential Apartment",
    message: "Canal Road, Vesu, Surat ",
  ),
  ChatModel(
    image: "assets/image/image.png",
    price: "32,00,000 L",
    title: "Smart Home",
    subtitle: "2 & 3 BHK Asha Residential Apartment",
    message: "Canal Road, Vesu, Surat ",
  ),
  ChatModel(
    image: "assets/image/image.png",
    price: "19,00,000 L",
    title: "Smart Homee",
    subtitle: "2 & 3 BHK Asha Residential Apartment",
    message: "Canal Road, Vesu, Surat ",
  ),

];
}