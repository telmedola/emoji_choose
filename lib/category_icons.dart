import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


/// All the possible categories that [Emoji] can be put into
///
/// All [Category] are shown in the keyboard bottombar with the exception of [Category.RECOMMENDED]
/// which only displays when keywords are given
enum Category {
  RECOMMENDED,
  RECENT,
  SMILEYS,
  ANIMALS,
  FOODS,
  TRAVEL,
  ACTIVITIES,
  OBJECTS,
  SYMBOLS,
  FLAGS
}
/// Class that defines the icon representing a [Category]
class CategoryIcon {
  /// The icon to represent the category
  final IconData icon;

  /// The default color of the icon
  final Color color;

  /// The color of the icon once the category is selected
  final Color selectedColor;

  const CategoryIcon({required this.icon,
    this.color = const Color.fromRGBO(211, 211, 211, 1),
    this.selectedColor = const Color.fromRGBO(178, 178, 178, 1)});
}

/// Class used to define all the [CategoryIcon] shown for each [Category]
///
/// This allows the keyboard to be personalized by changing icons shown.
/// If a [CategoryIcon] is set as null or not defined during initialization, the default icons will be used instead
class CategoryIcons {
  /// Icon for [Category.RECOMMENDED]
  final CategoryIcon recommendationIcon;

  /// Icon for [Category.RECENT]
  final CategoryIcon recentIcon;

  /// Icon for [Category.SMILEYS]
  final CategoryIcon smileyIcon;

  /// Icon for [Category.ANIMALS]
  final CategoryIcon animalIcon;

  /// Icon for [Category.FOODS]
  final CategoryIcon foodIcon;

  /// Icon for [Category.TRAVEL]
  final CategoryIcon travelIcon;

  /// Icon for [Category.ACTIVITIES]
  final CategoryIcon activityIcon;

  /// Icon for [Category.OBJECTS]
  final CategoryIcon objectIcon;

  /// Icon for [Category.SYMBOLS]
  final CategoryIcon symbolIcon;

  /// Icon for [Category.FLAGS]
  final CategoryIcon flagIcon;

  const CategoryIcons({this.recommendationIcon = const CategoryIcon(icon: Icons.search, color: Colors.amberAccent),
        this.recentIcon = const CategoryIcon(icon: Icons.access_time),
        this.smileyIcon = const CategoryIcon(icon: Icons.tag_faces),
        this.animalIcon = const CategoryIcon(icon: Icons.pets),
        this.foodIcon = const CategoryIcon(icon: Icons.fastfood),
        this.travelIcon = const CategoryIcon(icon: Icons.location_city),
        this.activityIcon = const CategoryIcon(icon: Icons.directions_run),
        this.objectIcon = const CategoryIcon(icon: Icons.lightbulb_outline),
        this.symbolIcon = const CategoryIcon(icon: Icons.euro_symbol),
        this.flagIcon = const CategoryIcon(icon: Icons.flag)});
}
