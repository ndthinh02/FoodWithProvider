import 'package:api_food/model/food.dart';

import '../categories.dart';

// 1 chinese food
// 2 japanse food
//3 vietnamese food
//4 beef
//5  chicken
//6 cake
//7 rice
//8 shushi
//9 pig
//10 nooddle
var FAKE_CATEGORIES = [
  Categories(
      id: 1,
      nameCategory: 'Chinese ',
      rateStar: 2,
      comments: 1232,
      rate: 4.6,
      imageUrl:
          'https://images.pexels.com/photos/955137/pexels-photo-955137.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Normal',
      kilometer: 2.8,
      timer: 30),
  Categories(
      id: 2,
      nameCategory: 'JaPanse ',
      rateStar: 4,
      comments: 232,
      rate: 3.6,
      imageUrl:
          'https://images.pexels.com/photos/271715/pexels-photo-271715.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Delicious',
      kilometer: 3.0,
      timer: 40),
  Categories(
      id: 3,
      nameCategory: 'VietNamese ',
      rateStar: 5,
      comments: 2355,
      rate: 5.0,
      imageUrl:
          'https://images.pexels.com/photos/98874/pexels-photo-98874.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Bad',
      kilometer: 12,
      timer: 40),
  Categories(
      id: 4,
      nameCategory: 'Beef ',
      rateStar: 4,
      comments: 1224,
      rate: 4.2,
      imageUrl:
          'https://images.pexels.com/photos/65175/pexels-photo-65175.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Good',
      kilometer: 5.0,
      timer: 40),
  Categories(
      id: 5,
      nameCategory: 'Chicken ',
      rateStar: 2,
      comments: 1232,
      rate: 4.6,
      imageUrl:
          'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Bad',
      kilometer: 5.0,
      timer: 20),
  Categories(
      id: 6,
      nameCategory: 'Cake',
      rateStar: 2,
      comments: 1232,
      rate: 4.6,
      imageUrl:
          'https://images.pexels.com/photos/1448721/pexels-photo-1448721.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      difficulty: ' Gooddd',
      kilometer: 5.0,
      timer: 20),
  Categories(
      id: 7,
      nameCategory: 'Rice',
      rateStar: 2,
      comments: 1232,
      rate: 4.6,
      imageUrl:
          'https://images.pexels.com/photos/724300/pexels-photo-724300.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Good',
      kilometer: 5.0,
      timer: 20),
  Categories(
      id: 8,
      nameCategory: 'Shushi',
      rateStar: 4,
      comments: 3132,
      rate: 4.8,
      imageUrl:
          'https://images.pexels.com/photos/13140843/pexels-photo-13140843.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Good',
      kilometer: 5.0,
      timer: 20),
  Categories(
      id: 9,
      nameCategory: 'Pig ',
      rateStar: 2,
      comments: 232,
      rate: 2.6,
      imageUrl:
          'https://images.pexels.com/photos/236887/pexels-photo-236887.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Very Bad',
      kilometer: 5.0,
      timer: 20),
  Categories(
      id: 10,
      nameCategory: 'Noodlde',
      rateStar: 3,
      comments: 1232,
      rate: 4.2,
      imageUrl:
          'https://images.pexels.com/photos/2347311/pexels-photo-2347311.jpeg?auto=compress&cs=tinysrgb&w=600',
      difficulty: 'Normal',
      kilometer: 2.0,
      timer: 50),
];
var FAKE_FOOD = [
  Food(
      id: 'p1',
      price: 60.0,
      description:
          'In a country where the traditional way to greet someone translates to  (ni chile ma), be rest assured, the food will be extraordinary. China has the most popular culinary heritage in the world. The history of their cuisine dates back to about 1000 years with varied cooking styles, techniques and ingredients that have evolved over time.',
      nameFood: 'Chinese Recipes',
      rateStar: 5,
      comments: 1243,
      rate: 4.5,
      difficulty: 'Normal',
      timer: 30,
      kilometer: 4,
      imageUrl:
          'https://c.ndtvimg.com/2020-01/dd46j918_chilli-chicken_625x300_21_January_20.jpg',
      idCategory: 1),
  Food(
      id: 'p2',
      price: 30.0,
      description:
          'Is it great to warm up with a piping hot bowl of soup during the winters Here  a soup with a spicy and sour broth. It  made with the goodness of mushrooms, cabbage, carrot and a spicy twist of red peppers or white pepper and sour with vinegar',
      nameFood: 'Hot and Sour Soup',
      rateStar: 4,
      comments: 200,
      rate: 4.4,
      difficulty: 'Normal',
      timer: 36,
      kilometer: 5,
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/soup-625_625x350_81466064298.jpg',
      idCategory: 1),
  Food(
      id: 'p3',
      price: 20.0,
      description:
          'One of the staples in every home, noodles are not just a kids favourite snack to binge on but are also equally loved by adults. Here is a noodles recipe that is super quick and easy to prepare at home. Just bung in all your favourite veggies and create a masterpiece of your own.',
      nameFood: 'Quick Noddles',
      rateStar: 5,
      comments: 1232,
      rate: 3.4,
      difficulty: 'Good',
      timer: 54,
      kilometer: 5,
      imageUrl:
          'https://i.ndtvimg.com/i/2016-06/noodles-625_625x350_41466064269.jpg',
      idCategory: 1),
  Food(
      id: 'p4',
      price: 20.0,
      description:
          'A fiery delight straight from the Sichuan region. It is loaded with pungent spices like brown pepper. red chillies, ginger, green chillies and white pepper.',
      nameFood: 'Szechwan Chilli Chicken',
      rateStar: 4,
      comments: 312,
      rate: 5.0,
      difficulty: 'Normal',
      timer: 50,
      kilometer: 7,
      imageUrl:
          'https://i.ndtvimg.com/i/2015-02/chilli-chicken_625x350_81424323578.jpg',
      idCategory: 1),
  Food(
      id: 'p5',
      price: 60.0,
      description:
          'Steamed stuffed bun is a flour dough wrapper with stuffing, which is a kind of Chinese traditional food. It is said that it was created for sacrifices to dead soldiers in battles by Zhuge Liang, who was an outstanding politician and military strategist during the Three Kingdoms Period. The stuffing was originally minced beef and mutton. Later, stuffings became more and more varied. The name we use today was settled in the Song Dynasty.Nowadays, the stuffing can be pork, beef, pickled Chinese cabbage, vermicelli, mushrooms, bean paste, eggplant, cabbage, Chinese chives, fried eggs, tofu and so on. There is larger variety of buns, including Small Steamed Buns, Soup Infilled Buns, and Pan-Fried Buns.',
      nameFood: 'Steamed Stuffed Bun',
      rateStar: 5,
      comments: 1243,
      rate: 4.5,
      difficulty: 'Normal',
      timer: 30,
      kilometer: 4,
      imageUrl:
          'https://th.bing.com/th/id/OIP.x-G7uGmgUxu1_WFWRGCklwHaEK?w=321&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',
      idCategory: 1),
  Food(
      id: 'p6',
      price: 20.0,
      description:
          'Zongzi is a Chinese traditional food for the Dragon Boat Festival. The glutinous rice is wrapped into reed leaves and then steamed. Zongzi appeared in the Spring and Autumn Period (770 - 476 BC), and was used for the worship of ancestors and Gods. Starting from Warring States Period (475 - 221 BC), it was used to commemorate the great poet Qu Yuan. In the Jin Dynasty (265 - 420 AD), it was fixed as the festival food for Dragon Boat Festival, and Chinese medicine, meat, chestnuts and other things were added as fillings except for glutinous rice. During the Song Dynasty (960 - 1279 AD), preserved fruits were added into fillings of Zongzi. Later, more and more spicy Zongzis came out. Nowadays, the common fillings of sweet Zongzi are red bean, red date, rose, date paste, bean paste, etc.; while those of salty ones are pork, ham, sausages, shrimp, etc.',
      nameFood: 'Zongzip',
      rateStar: 3,
      comments: 200,
      rate: 4.4,
      difficulty: 'Normal',
      timer: 40,
      kilometer: 8,
      imageUrl:
          'https://th.bing.com/th/id/OIP.xatHCoQvMvKrPzeQf2UKwAHaDO?w=301&h=152&c=7&r=0&o=5&dpr=1.1&pid=1.7',
      idCategory: 1),
  Food(
      id: 'p7',
      price: 34.0,
      description:
          'Tofu, or bean curd, is a traditional bean product that is mostly made of soybeans, black beans or other beans with a high protein content. Most people believe that tofu was invented in about 164 BC during the Western Han Dynasty (202 BC - 9 AD) by Liu An, the seignior in Huainan, Anhui. However, its taste was not as good as the current tofu, so it was not widely used as a cooking ingredient. In the Tang Dynasty (618 - 907 AD), tofu was taken to Japan. Until the Song Dynasty (960 - 1279 AD), the method of making tofu was greatly improved and tofu became an important daily Chinese food. In the meantime, tofu was introduced into Korea. Later, it came to Europe, Africa and North America in the early 19th century. Nowadays, tofu has became an important food not only in China, but also in Vietnam, Thailand, South Korea, Japan and other neighboring countries.',
      nameFood: 'Home-style Tofu',
      rateStar: 5,
      comments: 1232,
      rate: 3.4,
      difficulty: 'Good',
      timer: 54,
      kilometer: 5,
      imageUrl:
          'https://www.bing.com/th?id=OSK.97deedb28dc51db2c16c51a77d8f01ab&w=459&h=459&c=7&rs=1&qlt=80&o=6&cdv=1&dpr=1.1&pid=16.1',
      idCategory: 1),
  Food(
      id: 'p8',
      price: 23.0,
      description:
          'Dumpling (饺子) has been an indispensable Chinese dish of the reunion dinner on Chinese New Year’s Eve, especially in the northern regions. It was invented by Zhang Zhongjing – the sage of Chinese medicine over 1,800 years ago to cure the frostbitten ears. Nowadays, people mix minced pork, chicken, mutton, or beef with chopped vegetables to make the filling, and then wrap it into a thin piece of dumpling skin and pinch the wrapper into the shape of an ear. On Chinese New Year, people also wrap brown sugar, coins, dates, or peanuts for a good omen.',
      nameFood: 'Dumplings',
      rateStar: 4,
      comments: 312,
      rate: 5.0,
      difficulty: 'Normal',
      timer: 50,
      kilometer: 7,
      imageUrl:
          'https://www.bing.com/th?id=OSK.HEROb6QJvcnqi8LwWnIFV9CtBw_MMYhFGROBD3cOdqMLggQ&w=472&h=280&c=13&rs=2&o=6&dpr=1.1&pid=SANGAM',
      idCategory: 1),
  Food(
      id: 'p9',
      price: 43.0,
      description:
          'The ultimate in Japanese fine dining, kaiseki is a tasting course comprised of small, seasonally themed dishes crafted with the utmost precision and attention to detail. Kaiseki was born from the traditional tea ceremony, where small morsels of food were offered alongside the bitter green tea, and over time these offerings evolved into a multi-course haute cuisine meal.',
      nameFood: 'Kaiseki',
      rateStar: 4,
      comments: 312,
      rate: 5.0,
      difficulty: 'Normal',
      timer: 50,
      kilometer: 7,
      imageUrl:
          'https://a.cdn-hotels.com/gdcs/production193/d624/ecc6e01e-af56-46f1-b4c0-3120de1f2e4a.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
      idCategory: 2),
  Food(
    id: 'p10',
    price: 44.0,
    description:
        'Yakitori is a dish of bite-sized cuts of chicken grilled on a skewer. It makes use of every part of the chicken — including heart, liver, and even chicken comb — to avoid wastefulness, an important element of Japanese food culture. Unlike other traditional Japanese foods, yakitori has only been eaten since around the mid-17th century, as eating meat was largely taboo in Japan for several centuries.',
    nameFood: 'Yakitori',
    rateStar: 5,
    comments: 1232,
    rate: 3.4,
    difficulty: 'Good',
    timer: 54,
    kilometer: 5,
    imageUrl:
        'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/ed9hap.jpg',
    idCategory: 2,
  ),
  Food(
    id: 'p11',
    price: 21.0,
    description:
        'Sushi is, without doubt, one of the most famous foods to come from Japan. A dish that was born in ancient times, sushi originated from the process of preserving fish in fermented rice. Today it’s made with vinegared rice and fresh fish, presented in a number of ways and shapes.',
    nameFood: 'Sushi',
    rateStar: 4,
    comments: 123,
    rate: 4.0,
    difficulty: 'Good',
    timer: 40,
    kilometer: 4,
    imageUrl:
        'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/cb3c0x-2.jpg'
        '',
    idCategory: 2,
  ),
  Food(
    id: 'p12',
    price: 32.0,
    description:
        'Soba is another type of noodle dish that has been eaten in Japan for centuries. Made from buckwheat flour, soba has a long thin shape and firm texture and is very healthy. Like udon noodles, soba can be served in a hot broth or chilled with a dipping sauce, making it a delicious and healthy option any time of year.',
    nameFood: 'Soba',
    rateStar: 3,
    comments: 212,
    rate: 3.0,
    difficulty: 'Normal',
    timer: 30,
    kilometer: 4,
    imageUrl:
        'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/t93wwp.jpg',
    idCategory: 2,
  ),
  Food(
    id: 'p13',
    price: 24.0,
    description:
        'Centuries before Japanese people were eating sushi, they first enjoyed raw fish without the rice. While the name “sashimi” refers to any thinly sliced raw food, including raw beef (gyuu-sashi), chicken (tori-zashi), and even horse (basashi), fish and seafood are the most popular varieties.',
    nameFood: 'Sashimi',
    rateStar: 4,
    comments: 212,
    rate: 4,
    difficulty: 'Good',
    timer: 31,
    kilometer: 6,
    imageUrl:
        'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/jwa467.jpg',
    idCategory: 2,
  ),
  Food(
    id: 'p14',
    price: 26.0,
    description:
        'Crispy, tasty, somewhat healthy and cheap, tempura is one of the most popular dishes in Japan. Your choice of prawns, fish, squid, vegetables or tofu are lightly battered and quickly deep-fried to prevent the loss of nutritious vitamins and minerals. Tempura may be served on its own, but is often presented on top of noodles or rice, with a variety of dipping sauces.',
    nameFood: 'Tempura',
    rateStar: 3,
    comments: 122,
    rate: 4,
    difficulty: 'Good',
    timer: 21,
    kilometer: 3,
    imageUrl:
        'https://a.cdn-hotels.com/gdcs/production142/d1428/21bf55a6-0124-475b-b3a4-d338651b0dec.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    idCategory: 2,
  ),
  Food(
    id: 'p15',
    price: 31.0,
    description:
        'Noodles are a delicious and cheap alternative to a rice-based meal. Made from buckwheat flour, soba noodles have a greyish colour and are served hot with broth or cold with a dipping sauce. Udon are thick wheat noodles that are served hot or cold with soy or fish soup.With more than 10,000 specialty shops around the country, Ramen is perhaps the cheapest and most popular type of noodle in Japan (although originally from China). Available in thin or thick varieties, ramen is most often served with a hot broth made from fish, pork, miso or soy and is topped with tempura, crumbed pork fillet, or slices of meat. Many noodle shops operate a vending machine system. Simply buy a ticket at the vending machine when you enter. Choose your noodle preference; hot or cold, thick or thin, choose the serving size and your preferred topping. Hand the receipt to the chef or staff who will prepare it on the spot. Find a place to sit or stand and enjoy slurping your noodles along with everyone else.',
    nameFood: 'Quick Noddles',
    rateStar: 5,
    comments: 3133,
    rate: 5,
    difficulty: 'Delicous',
    timer: 50,
    kilometer: 3,
    imageUrl:
        'https://a.cdn-hotels.com/gdcs/production122/d1480/a2c0c3e3-82e1-4e5c-8a66-94b37a8daf1c.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    idCategory: 2,
  ),
  Food(
    id: 'p16',
    price: 45.0,
    description:
        'Okonomiyaki is a fun, interactive way of dining, perfect for groups. Basically, okonomiyaki is a batter that is mixed with all your favourite ingredients then fried like a pancake on the grill right in front of you. Okonomiyaki translates as ‘grill your favourite’ and as such there is great variety in terms of ingredients available – from seafood, beef, chicken and bacon, to tofu, cheese, corn, onion and other vegetables.Once the batter has cooked, the okonomiyaki is topped with a rich brown sauce, mayonnaise and dried bonito flakes. Typically each person in the group orders their own okonomiyaki preference and many restaurants allow you to cook your own, which is a fun addition to the meal.',
    nameFood: 'Okonomiyaki',
    rateStar: 4,
    comments: 123,
    rate: 4,
    difficulty: 'Good',
    timer: 45,
    kilometer: 5,
    imageUrl:
        'https://a.cdn-hotels.com/gdcs/production38/d170/3073d638-c201-477a-b5fd-800417567765.jpg?impolicy=fcrop&w=1600&h=1066&q=medium',
    idCategory: 2,
  ),
  // food popular
  Food(
      id: 'p65',
      price: 60.0,
      description:
          'In a country where the traditional way to greet someone translates to  (ni chile ma), be rest assured, the food will be extraordinary. China has the most popular culinary heritage in the world. The history of their cuisine dates back to about 1000 years with varied cooking styles, techniques and ingredients that have evolved over time.',
      nameFood: 'Éclair',
      rateStar: 5,
      comments: 1243,
      rate: 4.5,
      difficulty: 'Normal',
      timer: 30,
      kilometer: 4,
      imageUrl:
          'https://cdn.tasteatlas.com//Images/Dishes/5af8a479dedb4d53a7718ca752a536eb.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p221',
      price: 30.0,
      description:
          'Is it great to warm up with a piping hot bowl of soup during the winters Here  a soup with a spicy and sour broth. It  made with the goodness of mushrooms, cabbage, carrot and a spicy twist of red peppers or white pepper and sour with vinegar',
      nameFood: 'Apple Pie',
      rateStar: 4,
      comments: 200,
      rate: 4.4,
      difficulty: 'Normal',
      timer: 36,
      kilometer: 5,
      imageUrl:
          'https://cdn.tasteatlas.com//Images/Dishes/ca6ef74dca69400991b6723caa3a1f0b.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p321',
      price: 20.0,
      description:
          'One of the staples in every home, noodles are not just a kids favourite snack to binge on but are also equally loved by adults. Here is a noodles recipe that is super quick and easy to prepare at home. Just bung in all your favourite veggies and create a masterpiece of your own.',
      nameFood: 'Nougat',
      rateStar: 5,
      comments: 1232,
      rate: 3.4,
      difficulty: 'Good',
      timer: 54,
      kilometer: 5,
      imageUrl:
          'https://cdn.tasteatlas.com//Images/Dishes/9d293caf1f9f47669f78a2d098ea590b.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p432',
      price: 20.0,
      description:
          'A fiery delight straight from the Sichuan region. It is loaded with pungent spices like brown pepper. red chillies, ginger, green chillies and white pepper.',
      nameFood: 'Fudge',
      rateStar: 4,
      comments: 312,
      rate: 5.0,
      difficulty: 'Normal',
      timer: 50,
      kilometer: 7,
      imageUrl:
          'https://cdn.tasteatlas.com//Images/Dishes/a80d58e4be1647aa944959fbe888bd2f.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p5',
      price: 60.0,
      description:
          'Steamed stuffed bun is a flour dough wrapper with stuffing, which is a kind of Chinese traditional food. It is said that it was created for sacrifices to dead soldiers in battles by Zhuge Liang, who was an outstanding politician and military strategist during the Three Kingdoms Period. The stuffing was originally minced beef and mutton. Later, stuffings became more and more varied. The name we use today was settled in the Song Dynasty.Nowadays, the stuffing can be pork, beef, pickled Chinese cabbage, vermicelli, mushrooms, bean paste, eggplant, cabbage, Chinese chives, fried eggs, tofu and so on. There is larger variety of buns, including Small Steamed Buns, Soup Infilled Buns, and Pan-Fried Buns.',
      nameFood: 'Jeon',
      rateStar: 5,
      comments: 1243,
      rate: 4.5,
      difficulty: 'Normal',
      timer: 30,
      kilometer: 4,
      imageUrl:
          'https://cdn.tasteatlas.com//images/dishes/85969320cd7a4b66b98eaa607f2a7fa7.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p62',
      price: 20.0,
      description:
          'Zongzi is a Chinese traditional food for the Dragon Boat Festival. The glutinous rice is wrapped into reed leaves and then steamed. Zongzi appeared in the Spring and Autumn Period (770 - 476 BC), and was used for the worship of ancestors and Gods. Starting from Warring States Period (475 - 221 BC), it was used to commemorate the great poet Qu Yuan. In the Jin Dynasty (265 - 420 AD), it was fixed as the festival food for Dragon Boat Festival, and Chinese medicine, meat, chestnuts and other things were added as fillings except for glutinous rice. During the Song Dynasty (960 - 1279 AD), preserved fruits were added into fillings of Zongzi. Later, more and more spicy Zongzis came out. Nowadays, the common fillings of sweet Zongzi are red bean, red date, rose, date paste, bean paste, etc.; while those of salty ones are pork, ham, sausages, shrimp, etc.',
      nameFood: 'Pepperoni',
      rateStar: 3,
      comments: 200,
      rate: 4.4,
      difficulty: 'Normal',
      timer: 40,
      kilometer: 8,
      imageUrl:
          'https://cdn.tasteatlas.com//Images/Ingredients/7252e0b8d3d045cf922a319c533cf899.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p7',
      price: 34.0,
      description:
          'Tofu, or bean curd, is a traditional bean product that is mostly made of soybeans, black beans or other beans with a high protein content. Most people believe that tofu was invented in about 164 BC during the Western Han Dynasty (202 BC - 9 AD) by Liu An, the seignior in Huainan, Anhui. However, its taste was not as good as the current tofu, so it was not widely used as a cooking ingredient. In the Tang Dynasty (618 - 907 AD), tofu was taken to Japan. Until the Song Dynasty (960 - 1279 AD), the method of making tofu was greatly improved and tofu became an important daily Chinese food. In the meantime, tofu was introduced into Korea. Later, it came to Europe, Africa and North America in the early 19th century. Nowadays, tofu has became an important food not only in China, but also in Vietnam, Thailand, South Korea, Japan and other neighboring countries.',
      nameFood: 'Kombu',
      rateStar: 5,
      comments: 1232,
      rate: 3.4,
      difficulty: 'Good',
      timer: 54,
      kilometer: 5,
      imageUrl:
          'https://cdn.tasteatlas.com//Images/Ingredients/94f9b7f011c34e188a96aee2008a5ec6.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p8',
      price: 23.0,
      description:
          'Dumpling (饺子) has been an indispensable Chinese dish of the reunion dinner on Chinese New Year’s Eve, especially in the northern regions. It was invented by Zhang Zhongjing – the sage of Chinese medicine over 1,800 years ago to cure the frostbitten ears. Nowadays, people mix minced pork, chicken, mutton, or beef with chopped vegetables to make the filling, and then wrap it into a thin piece of dumpling skin and pinch the wrapper into the shape of an ear. On Chinese New Year, people also wrap brown sugar, coins, dates, or peanuts for a good omen.',
      nameFood: 'Chorizo',
      rateStar: 4,
      comments: 312,
      rate: 5.0,
      difficulty: 'Normal',
      timer: 50,
      kilometer: 7,
      imageUrl:
          'https://cdn.tasteatlas.com//images/dishes/83e4b029e24e4066964157d66b7e2a66.jpg?w=905&h=510',
      idCategory: 0),
  Food(
      id: 'p8',
      price: 23.0,
      description:
          'Dumpling (饺子) has been an indispensable Chinese dish of the reunion dinner on Chinese New Year’s Eve, especially in the northern regions. It was invented by Zhang Zhongjing – the sage of Chinese medicine over 1,800 years ago to cure the frostbitten ears. Nowadays, people mix minced pork, chicken, mutton, or beef with chopped vegetables to make the filling, and then wrap it into a thin piece of dumpling skin and pinch the wrapper into the shape of an ear. On Chinese New Year, people also wrap brown sugar, coins, dates, or peanuts for a good omen.',
      nameFood: 'Chorizo',
      rateStar: 4,
      comments: 312,
      rate: 5.0,
      difficulty: 'Normal',
      timer: 50,
      kilometer: 7,
      imageUrl:
          'https://cdn.tasteatlas.com//images/dishes/83e4b029e24e4066964157d66b7e2a66.jpg?w=905&h=510',
      idCategory: 0),
];
