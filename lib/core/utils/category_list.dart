import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mco/core/models/category.dart' as category_model;

final List<category_model.Category> categories = [
  category_model.Category(
    id: 9,
    name: "General Knowledge",
    icon: FontAwesomeIcons.globeAsia,
  ),
  category_model.Category(
    id: 10,
    name: "Books",
    icon: FontAwesomeIcons.bookOpen,
  ),
  category_model.Category(
    id: 11,
    name: "Film",
    icon: FontAwesomeIcons.video,
  ),
  category_model.Category(
    id: 12,
    name: "Music",
    icon: FontAwesomeIcons.music,
  ),
  category_model.Category(
    id: 13,
    name: "Musicals & Theatres",
    icon: FontAwesomeIcons.theaterMasks,
  ),
  category_model.Category(
    id: 14,
    name: "Television",
    icon: FontAwesomeIcons.tv,
  ),
  category_model.Category(
    id: 1,
    icon: FontAwesomeIcons.microchip,
    name: "Tech",
  ),
  category_model.Category(
    id: 1,
    icon: FontAwesomeIcons.car,
    name: "Car",
  ),
  category_model.Category(
    id: 1,
    icon: FontAwesomeIcons.mobileScreenButton,
    name: "Mobile",
  ),
  category_model.Category(
    id: 1,
    icon: FontAwesomeIcons.apple,
    name: "Apple",
  ),
];
