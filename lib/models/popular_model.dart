class PopularWatchModel {
  String name;
  String iconPath;
  String kind;
  String fashion;
  String ammount;
  bool boxIsSelected;

  PopularWatchModel({
    required this.name,
    required this.iconPath,
    required this.kind,
    required this.fashion,
    required this.ammount,
    required this.boxIsSelected
  });

  static List <PopularWatchModel> getPopularWatch() {
    List <PopularWatchModel> popularwatch = [];

    popularwatch.add(
      PopularWatchModel(
        name: "Breitling", 
        iconPath: "assets/icons/chrono.png", 
        kind: "Chonograph", 
        fashion: "Casual", 
        ammount: '₹ 7k',
        boxIsSelected: true, 
        ),
    );

    
    popularwatch.add(
      PopularWatchModel(
        name: "Skmei", 
        iconPath: "assets/icons/Digital.png", 
        kind: "Digital", 
        fashion: "Casual", 
        ammount: '₹ 10k',
        boxIsSelected: true,
        )
    );

    popularwatch.add(
      PopularWatchModel(
        name: "Apple", 
        iconPath: "assets/icons/smart.png", 
        kind: "Smart", 
        fashion: "Casual", 
        ammount: '₹ 50k',
        boxIsSelected: true,
        ),
    );

    popularwatch.add(
      PopularWatchModel(
        name: "Vortex", 
        iconPath: "assets/icons/analog.png", 
        kind: "Analogue", 
        fashion: "Formal", 
        ammount: '₹ 5k',
        boxIsSelected: true,
        )
    );

    return popularwatch;
  }
}

