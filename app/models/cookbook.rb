require_relative './recipe'

class Cookbook

  def self.all
  [
      Recipe.new(id: 1,title: "Blackened Catfish", directions: "Preheat a cast iron skillet to medium high with peanut oil. Mix dry ingredients together. Cover both sides of catfish with the seasoning mix and place in skillet. Cook on one side for 4 minutes and turn when cooked halfway through. Cook for another 4 minutes on the other side. Remove from pan and serve with Cajun remoulade.
",ingredients: ["2 tablespoons peanut oil, for frying","4 catfish filets","1 1/2 tablespoons salt","1 tablespoons freshly ground black pepper","1 tablespoons cayenne pepper"], cooking_time: 8, image_url: "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2008/12/1/0/NY0304_Blackened-Catfish.jpg.rend.sni12col.landscape.jpeg"),
      Recipe.new(id: 2,title: "Baked Chicken Wings", directions: "Preheat oven to 375*F or 190*C. Combine all ingredients except chicken in a large, resealable bag. Seal and shake to combine. Add the chicken into the resealable bag, seal and shake to coat evenly. Arrange the chicken wings flat on a baking sheet. You can choose to line it with parchment paper or tin foil. Cook the wings in the preheated oven for 1 hour, or until wings are crispy and cooked through.",ingredients: ["1 lb chicken wings (roughly 15-20)","1 teaspoon garlic powder","1/2-1 teaspoon onion powder","2 teaspoons cayenne pepper"], cooking_time: 60, image_url: "http://lds.net/wp-content/uploads/2014/05/caramelized-baked-chicken.jpg"),
      Recipe.new(id: 3,title: "Collard Greens", directions: "Heat oil in a large pot over medium-high heat. Add bacon, and cook until crisp. Remove bacon from pan, crumble and return to the pan. Add onion, and cook until tender, about 5 minutes. Add garlic, and cook until just fragrant. Add collard greens, and fry until they start to wilt.
Pour in chicken broth, and season with salt, pepper, and red pepper flakes. Reduce heat to low, cover, and simmer for 45 minutes, or until greens are tender.",ingredients: ["1 tablespoon olive oil","1 large onion, chopped","2 cloves garlic, minced","1 teaspoon pepper"], cooking_time: 120,image_url: "http://www.gloryfoods.com/media/images/Fresh%20Garlic%20Greens.jpg"),
      Recipe.new(id: 4,title: "Cornbread", directions: "Preheat the oven to 425 degrees F. Lightly grease an 8-inch baking dish. In a large bowl, mix together the cornmeal, flour, sugar, baking powder, baking soda, and salt.In a separate bowl, mix together the eggs, buttermilk, and butter. Pour the buttermilk mixture into the cornmeal mixture and fold together until there are no dry spots (the batter will still be lumpy). Pour the batter into the prepared baking dish. Bake until the top is golden brown and tester inserted into the middle of the corn bread comes out clean, about 20 to 25 minutes. Remove the cornbread from the oven and let it cool for 10 minutes before serving.",ingredients: ["6 tablespoons unsalted butter, melted","1 cup cornmeal","3/4 cup all-purpose flour","1 tablespoon sugar","1 1/2 teaspoons baking powder","1/2 teaspoon baking soda","1/4 teaspoon salt","2 large eggs, lightly beaten","1 1/2 cups buttermilk"], cooking_time: 45,image_url: "/images/Corn-Bread.jpg"),
      Recipe.new(id: 5,title: "Sauteed Spinach", directions: "Heat a large skillet. Melt the butter, then add the olive oil and chopped shallot. Cook until soft, about 3 minutes. Add the spinach and cook, stirring, until spinach is wilted. Season with salt and pepper and toss again. Serve warm.",ingredients: ["1 tablespoon butter","1 tablespoon extra-virgin olive oil","1 small shallot, chopped","10 ounce package baby spinach","Salt and freshly ground black pepper"], cooking_time: 20,image_url: "/images/sauteed-spinach-small.jpeg"),
      Recipe.new(id: 6,title: "Butter Pecan Cake", directions: "Place pecans and 1/4 cup butter in a baking pan. Bake at 350° for 20-25 minutes or until toasted, stirring frequently; set aside.
In a large bowl, cream sugar and remaining butter until light and fluffy. Add eggs, one at a time, beating well after each addition. Stir in vanilla. Combine the flour, baking powder and salt; add to the creamed mixture alternately with milk, beating well after each addition. Stir in 1-1/3 cups of toasted pecans.
Pour into three greased and floured 9-in. round baking pans. Bake at 350° for 25-30 minutes or until a toothpick inserted near the center comes out clean. Cool for 10 minutes before removing from pans to wire racks to cool completely.
For frosting, cream butter and confectioners' sugar in a large bowl. Add milk and vanilla; beat until smooth. Stir in remaining toasted pecans. Spread frosting between layers and over top and sides of cake. Yield: 12-16 servings.",ingredients: ["2-2/3 cups chopped pecans","1-1/4 cups butter, softened, divided","2 cups sugar","4 eggs","2 teaspoons vanilla extract","3 cups all-purpose flour","2 teaspoons baking powder","1/2 teaspoon salt","1 cup milk","FROSTING: 1 cup butter, softened","FROSTING: 8 to 8-1/2 cups confectioners' sugar","FROSTING: 1 can (5 ounces) evaporated milk","FROSTING: 2 teaspoons vanilla extract"], cooking_time: 120,image_url: "/images/butter-pecan-cake.jpeg")
  ]
  end

  def self.find(id)
    self.all.find do |item|
      item.id == id
    end
  end

  def self.search(pattern)
    self.all.select do |item|
      item.title.downcase.include?(pattern.downcase) ||
          item.directions.downcase.include?(pattern.downcase) ||
          item.ingredients.join.to_s.downcase.include?(pattern.downcase) ||
          item.cooking_time.to_s.downcase.include?(pattern.downcase)
    end
  end
end