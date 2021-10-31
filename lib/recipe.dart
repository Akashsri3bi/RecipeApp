class Recipe {
  String label;
  String ImageUrl;
  int servings;
  List<Ingredient> ingredients;

  //Constructor in dart for Recipe
  Recipe(this.label, this.ImageUrl, this.servings, this.ingredients);

  //Adding method for Recipe class
  //Hardcoded list samples later we will use a database or JSon file using APi to get our data
  static List<Recipe> samples = [
    Recipe(
        'Spaghetti and Meatballs',
        'https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/classic-eggs-benedict-16.jpg',
        4, [
      Ingredient(1, 'box', 'sphagetti'),
      Ingredient(4, '', 'Frozen Meatballs'),
      Ingredient(0.5, 'jar', 'sauce')
    ]),
    Recipe(
      'Tomato Soup',
      'https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/white-chocolate-peppermint-bark-18.jpg',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup'),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/caesar-salad-ala-steve-3.jpg',
      1,
      [
        Ingredient(2, 'slices', 'Cheese'),
        Ingredient(2, 'slices', 'Bread'),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/classic-eggs-benedict-16.jpg',
      24,
      [
        Ingredient(4, 'cups', 'flour'),
        Ingredient(2, 'cups', 'sugar'),
        Ingredient(0.5, 'cups', 'chocolate chips'),
      ],
    ),
    Recipe(
      'Taco Salad',
      'https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/classic-eggs-benedict-16.jpg',
      1,
      [
        Ingredient(4, 'oz', 'nachos'),
        Ingredient(3, 'oz', 'taco meat'),
        Ingredient(0.5, 'cup', 'cheese'),
        Ingredient(0.25, 'cup', 'chopped tomatoes'),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/classic-eggs-benedict-16.jpg',
      4,
      [
        Ingredient(1, 'item', 'pizza'),
        Ingredient(1, 'cup', 'pineapple'),
        Ingredient(8, 'oz', 'ham'),
      ],
    ),
  ];
}

//Adding Ingredients class
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
