import 'dart:ui';

class WatchModel {
  String name;
  String iconPath;
  String amount;
  String fashion;
  String kind;
  Color boxColor;
  bool viewIsSelected;

  WatchModel({
    required this.name,
    required this.iconPath,
    required this.amount,
    required this.fashion,
    required this.kind,
    required this.viewIsSelected,
    required this.boxColor
  });

  static List<WatchModel> getWatches() {
    List<WatchModel> watches = [];

    watches.add(
      WatchModel(
        name: 'Breitling', 
        iconPath: 'assets/icons/chrono.png', 
        kind: 'Chronograph',
        fashion: 'Formal', 
        amount: '₹ 7k', 
        viewIsSelected: true,
        boxColor: Color.fromARGB(255, 238, 164, 229)
        ),
      );

    watches.add(
      WatchModel(
        name: 'G-Shock', 
        iconPath: 'assets/icons/digital.png', 
        kind: 'Digital',
        fashion: 'Casual', 
        amount: '₹ 4k', 
        viewIsSelected: true, 
        boxColor: Color(0xff9DCEFF),
        ),
      );

    watches.add(
      WatchModel(
        name: 'Samsung', 
        iconPath: 'assets/icons/smart.png', 
        kind: 'Smart', 
        fashion: 'Casual/Formal',
        amount: '₹ 50k', 
        viewIsSelected: true,
        boxColor: Color.fromARGB(255, 238, 164, 229)
        ),
      );

    watches.add(
      WatchModel(
        name: 'Rolex', 
        iconPath: 'assets/icons/analog.png', 
        kind: 'Analogue', 
        fashion: 'Formal',
        amount: '₹ 5k', 
        viewIsSelected: true,
        boxColor: Color(0xff9DCEFF)
        ),
      );
        return watches;
  }
}
