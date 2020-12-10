
import 'package:first_app/models/delivery.dart';
import 'package:first_app/resources/app_image_assets.dart';

class DeliveryMock{
  DeliveryMock._();
  
  static const Delivery defaultDelivery = Delivery(
    address: "Unknown",
    time: "Undefined",
    cost: "0000",
    id: "#?",
    imageAssetPath: AppImageAssets.man1,

  );


  static const List<Delivery> delivery =[
    Delivery(
      address: "Victory Avenue 53A, entrance 4, 183sq.",
      time: "12:30",
      cost: "250 грн.",
      id: "#1",
      description: "Microwave oven Gorenje MO 17 E1S",

      name: "Valentyn",
      lastName: "Morodevets",
      phoneNumber: "+38 (099) 453-34-89",
      imageAssetPath: AppImageAssets.oven,

    ),

    Delivery(
      address: "Prospect Nauki 17B, entrance 2, 54sq.",
      time: "14:45",
      cost: "100 грн.",
      id: "#2",
      description: "Phone Apple iPhone 8 64Gb Gold",
      imageAssetPath: AppImageAssets.phone,

      name: "Pavel",
      lastName: "Skorobagach",
      phoneNumber: "+38 (065) 125-23-12",
    ),


    Delivery(
      address: "Gagarin Avenue 35G, entrance 6, 228sq.",
      time: "15:30",
      cost: "150 грн.",
      id: "#3",
      description: "Notebook Asus ROG Strix G15 G512LI-HN094",
      imageAssetPath: AppImageAssets.notebook,

      name: "Sergey",
      lastName: "Kolyadniy",
      phoneNumber: "+38 (063) 224-15-48",
    ),

    Delivery(
      address: "Landau Avenue 14A, entrance 3, 83sq.",
      time: "16:20",
      cost: "85 грн.",
      id: "#4",
      description: "Screwdriver Bosch Professional GSR 12V",
      imageAssetPath: AppImageAssets.screwdriver,

      name: "Mihail",
      lastName: "Osadchiy",
      phoneNumber: "+38 (099) 113-72-53",
    ),

    Delivery(
      address: "Vishnevskogo street 24, building 3",
      time: "16:50",
      cost: "130 грн.",
      id: "#5",
      description: "Пылесос  ELECTROLUX EC41-4T",
      imageAssetPath: AppImageAssets.vacuumCleaner,

      name: "Vladislav",
      lastName: "Byrschenko",
      phoneNumber: "+38 (093) 513-43-14",
    ),

    Delivery(
      address: "Kalinichenka street 53, entrance 1, 15sq.",
      time: "17:20",
      cost: "70 грн.",
      id: "#6",
      description: "Tramontina Affilata knife set 9 pcs",
      imageAssetPath: AppImageAssets.knives,

      name: "Evgeniy",
      lastName: "Sokrachenko",
      phoneNumber: "+38 (099) 315-34-15",
    ),

    Delivery(
      address: "Landau Avenue 13A, entrance 8, 296 sq.",
      time: "17:40",
      cost: "120 грн.",
      id: "#7",
      description: "Chair Signal Q-025 Black",
      imageAssetPath: AppImageAssets.chair,

      name: "Maria",
      lastName: "Vylkova",
      phoneNumber: "+38 (093) 134-38-72",
    ),

    Delivery(
      address: "Victory Avenue 53A, entrance 3, 83sq.",
      time: "18.30",
      cost: "60 грн.",
      id: "#8",
      description: "Iron Tefal Access Easy FV1543",
      imageAssetPath: AppImageAssets.iron,

      name: "Kristina",
      lastName: "Nagotova",
      phoneNumber: "+38 (099) 457-15-92",
    ),

  ];
}

