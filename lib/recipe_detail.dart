import 'dart:html';

import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(
              image: NetworkImage(widget.recipe.ImageUrl),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),

          //We use a Expanded Widget to expand our Ingredients list to fill up the leftover space in the column
          Expanded(
              child: ListView.builder(
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    //Now we use String interpolation to put values in the given text . ${expression}
                    return Text(
                        '${ingredient.quantity * _sliderVal}  ${ingredient.measure} ${ingredient.name}');
                  })),

          //Adding a slider
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipe.servings} servings',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          ),
        ],
      )),
    );
  }
}
