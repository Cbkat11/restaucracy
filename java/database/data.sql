BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO restaurant (name, type, address, hours, phone_number, stars, img_url, takeout, delivery, website, reviews, popup_trigger, menu, price_range)
VALUES ('Il Rione', 'pizza', '1303 W 65th St, Cleveland, OH 44102', '4:00PM-10:00PM', '(216) 282-1451', 4.8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZWNLWv5D1yRmFIqCmZVuLrcT2CgKH7_5pMQ&usqp=CAU', true, false, 'https://www.ilrionepizzeria.com/', 'https://www.yelp.com/biz/il-rione-cleveland', false, 'Green Pie,Speck Pie,Sausage Pie,Arugula Salad,Diavolo Pie,Clam Pie,Roseanna Pie,White Pie,Meat and Cheese Plate', '$$'),
('Cleveland Chop', 'steakhouse', '824 W St Clair Ave, Cleveland, OH 44113', '11:30AM-8:00PM', '(216) 696-2467', 4.5, 'https://www.restaurantnews.com/wp-content/uploads/2013/07/Cleveland-Chop-Sizzles-as-Hottest-New-Restaurant-in-Popular-Cleveland-Warehouse-District.jpg', true, false, 'https://clevelandchop.com/', 'https://www.yelp.com/biz/cleveland-chop-cleveland', false, 'Calamari,Lump Crab Cake,Crab Bisque,Berkshire Pork Chop,New York Strip,Chop Burger,Ahi Poke Tacos,Bacon Wrapped Shrimp,Filet Oscar,Chicken Piccata', '$$$'),
('My Friends Restaurant', 'diner', '11616 Detroit Ave, Cleveland, OH 44102', '12:00AM-11:59PM', '(216) 221-2575', 4.4, 'https://cloudfront-us-east-1.images.arcpublishing.com/advancelocal/T3HZIGJHJZA4BNTQBYPUC6GBGU.jpg', true, true, 'https://myfriendsrestaurant.com/', 'https://www.yelp.com/biz/my-friends-deli-and-restaurant-cleveland', false, 'Grilled Potato Pancakes,Walleye Dinner,Quesadilla,Tuscan Chicken Salad,My Friends Hummus,Mile High Reuben,My Friends Burger,Waldorf Chicken Wrap,Honey Dipped Fried Chicken,Steak & Shrimp', '$'),
('Georges Kitchen', 'diner', '13101 Triskett Rd, Cleveland, OH 44111', '6:00AM-3:00PM', '(216) 671-0430', 4.5, 'https://media-cdn.tripadvisor.com/media/photo-s/12/e3/d8/2a/george-s-kitchen.jpg', true, false, '', 'https://www.yelp.com/biz/georges-kitchen-cleveland', false, 'Greek Pork Chops,Country Chicken,Moussaka,Roasted Turkey Dinner,Lasagna,Meatloaf,Maryland Style Crab Cakes,Stir Fry,T-bone Steak,Cubano Sandwich', '$'),
('Souper Market', 'soup', '7501 Carnegie Ave, Cleveland, OH 44103', '11:00AM-4:00PM', '(216) 361-1355', 4.6, 'https://static1.squarespace.com/static/51a61c2ae4b020a19ed90986/t/51eae411e4b02a37838553b1/1374348313465/souperlogo4.jpg?format=1500w', true, true, 'http://www.thesoupermarket.com/', 'https://www.yelp.com/biz/souper-market-cleveland-2', false, 'Green Apple Salad,Chicken Paprikash Soup,Marinated Asparagus Salad,Clam Chowder,Toasted Corn Gazpacho,Pulled Chicken Noodle,Mulligatawny Soup,Chili of the Week,Fattoush Salad,Souper Goopy Grilled Cheese', '$'),
('Donatos Pizza', 'pizza', '1710 State Rd, Cuyahoga Falls, OH 44223', '11:00AM-11:00PM', '(330) 923-5900', 4.1, 'https://www.restaurantnews.com/wp-content/uploads/2020/08/Donatos-Pizza-Bringing-Its-Edge-to-Edge-Pizza-to-Knoxville.jpg', true, true, 'https://donatos.com/', 'https://www.yelp.com/search?find_desc=donatos+pizza&find_loc=Cleveland%2C+OH', false, 'Hot Honey Pepperoni Pizza,Cauliflower Spinach Mozzarella Pizza,Mariachi Chicken Pizza,Big Don Italian Sub,Hot Chicken Sub,Create Your Own Calzone,Asiago Cheese Bread,Traditional Sauced or Dry Rubbed Wings,Chicken Harvest Salad,Party Twists', '$$'),
('Trattoria Vaccaro', 'italian', '1000 Ghent Rd, Akron, OH 44333', '4:00PM-9:00PM', '(330) 666-6158', 4.5, 'https://images.squarespace-cdn.com/content/v1/5ced88f707e45200015bc757/1562940757034-P3AUDKRCPU85DZ0ZP3AA/Vaccaro-Logo-1957-BLKjpg.jpg', true, false, 'https://vactrat.com/', 'https://www.yelp.com/biz/trattoria-vaccaro-akron-2', false, 'Calimari Fritti,Insalata Mista,Fra Diavolo,Pappardelle Bolognese,Nonna Lindas Eggplant,Lobster and Shrimp Pasta,Blackened Organic Salmon,Vaccaros 1957 Timpano,The Steve Johnson,The Vegan Steve Marks', '$$$'),
('Cilantro Thai & Sushi Restaurant', 'thai', '326 S Main St #1204, Akron, OH 44308', '11:00AM-2:30PM, 5:00PM-9:00PM', '(330) 434-2876', 4.5, 'https://wp-content/uploads/2020/07/Cilantro-Logo-scaled.jpg', true, true, 'https://cilantrothai.com/', 'https://www.yelp.com/biz/cilantro-thai-and-sushi-restaurant-akron', false, 'Papaya Salad,Pad Khee Mao,Pineapple Fried Rice,Eggplant Basil,Seafood Claypot,Green Curry Seared Scallop,Volcano Roll,Salmon Tempura Roll,Sashimi Mori,Fried Banana & Ice Cream', '$$'),
('El Rancho', 'mexican', '1666 W Exchange St, Akron, OH 44313', '11:00AM-10:00PM', '(330) 864-3300', 4.2, 'https://elranchoinc.com/wp-content/uploads/2019/03/logo-copy.png', true, false, 'http://www.elranchoakron.com/wp-content/uploads/2021/09/EL-RANCHO-MENU-2021-compressed.pdf', 'https://www.yelp.com/biz/el-rancho-akron', false, 'La Pina con Mariscos,Bandeja Paisa,Arepas,Chimichangas,Carne Asada,Churros,Steak or Chicken Burro,Seafood Chipotle,Speedy Gonzalez,Tamales', '$'),
('Irie Jamaican Kitchen', 'jamaican', '837 W Market St, Akron, OH 44303', '11:00AM-9:00PM', '(330) 333-9020', 4.2, 'https://static.wixstatic.com/medi/cilantrothai.coma/096fd0_e6aea8ebb07b4c7f94f2eb542d1b47d1~mv2.png/v1/fit/w_2500,h_1330,al_c/096fd0_e6aea8ebb07b4c7f94f2eb542d1b47d1~mv2.png', true, true, 'https://www.iriejakitchen.com/', 'https://www.yelp.com/biz/irie-jamaican-kitchen-cleveland-3', false, 'Jamaican Box,Island Bowl,Roti,Banana Pudding,Irie Aide', '$$'),
('Cloak & Dagger', 'bar', '2399 W 11th St, Cleveland, OH 44113', '4:00PM-12:00AM', '(216) 795-5657', 5, 'https://offloadmedia.feverup.com/secretcleveland.co/wp-content/uploads/2020/10/14035133/Screen-Shot-2020-10-09-at-4.59.38-AM.png', true, false, 'https://cloakanddaggercle.com/', 'https://www.yelp.com/biz/cloak-and-dagger-cleveland', false, 'Vine,Sorrow,Scorpio,Rabbits Foot,Torchbearer,Highness,Tiger,If Looks Could Kill,Champion of the Sun', '$$$'),
('Valerios Ristorante', 'italian', '12405 Mayfield Rd, Cleveland, OH 44106', '5:00PM-9:00PM', '(216) 421-8049', 4, 'https://cdn-5fb49d33c1ac1813b0e87e79.closte.com/wp-content/uploads/valerios-060419-vert.png', true, false, 'https://www.valeriosristorante.com/', 'https://www.yelp.com/biz/valerios-restaurant-cleveland', false, 'Lobster Spaghetti,Mushroom Ravioli,Orecchiette Alla Salsiccia,Rack of Lamb,Lamb Chops,Penne Alla Puttanesca,Pollo Alla Cacciatore,Gorgonzola Gnocchi,Rib Eye,Creme Brule', '$$$'),
('Bann Thai', 'thai', '20430 Harrisburg Westville Rd, Alliance, OH 44601', '11:00AM-9:00PM', '(330) 680-7281', 5, 'https://ewr1.vultrobjects.com/user-managed/9_bann-thai-co/bann-thai-food-zoom-0.jpg', true, false, 'https://www.bann-thai.com/', 'https://www.yelp.com/biz/bann-thai-alliance-3', false, 'Pad Thai,Crazy Noodles,Crab Rangoon,Pad See Ew,Tom Yum Soup,Pineapple Fried Rice,Garlic Chicken,Spring Rolls', '$$'),
('Cru Uncorked', 'french', '34300 Chagrin Blvd, Moreland Hills, OH 44022', '4:30PM-9:00PM', '(440) 903-1171', 4, 'https://pbs.twimg.com/media/D3aA_56XoAEpDUF?format=jpg&name=4096x4096', false, false, 'https://cruuncorked.com/', 'https://www.yelp.com/biz/cru-uncorked-moreland-hills', false, 'Halibut,Chocolate Stone,Filet Mignon,Veal Chop,Veal Chop,Scallops,Duck Breast,Beet Salad,Steak Tartare,Braised Short Rib', '$$$$'),
('Dante Next Door', 'american', '2247 Professor Ave suite c, Cleveland, OH 44113', '5:00PM-10:00PM', '(216) 274-1200', 4, 'https://resizer.otstatic.com/v2/photos/xlarge/1/24383323.jpg', true, false, 'https://danteboccuzzi.com/dante-next-door/', 'https://www.yelp.com/biz/dante-next-door-cleveland', false, 'Crab Cakes Benedict,French Toast Napolean,Everything Bagel and Lox,Pasta Carbonara Fritatta,Ohio Proud Steak and Eggs,Banana Foster Waffle,The Breakfast Calzone', '$$$'),
('Marys Diner', 'diner', '3450 E 93rd St, Cleveland, OH 44104', '6:00AM-3:00PM', '(216) 883-5750', 4, 'https://s3-media0.fl.yelpcdn.com/bphoto/Ky08b_ONxEdgeg6dn895Hw/348s.jpg', true, false, 'https://marysdiner.com/', 'yelp.com/biz/marys-diner-cleveland', false, 'Marys Mess,Loaded Chili Fries,Taco Salad,Rajin Cajun Burger,Three Cheese Melt,Pot Roast Dinner,Cream Pie', '$'),
('Bascule Bridge Grill', 'american', '1006 Bridge St, Ashtabula, OH 44004', '4:00PM-9:00PM', '(440) 964-0301', 5, 'https://i0.wp.com/basculebridgegrille.com/wp-content/uploads/2019/04/katsu.jpg?fit=1200%2C600&ssl=1', true, false, 'https://basculebridgegrille.com/', 'https://www.yelp.com/biz/bascule-bridge-grille-ashtabula', false, 'Scallops,Arugula Salad,Walleye,Braised Short Ribs,Calamari,Crab Cakes,Filet Mignon,Glazed Salmon,Mushroom Toast', '$$$'),
('The Feve', 'american', '30 S Main St, Oberlin, OH 44074', '11:00AM-10:00PM', '(440) 774-1978', 4, 'https://ir.4sqi.net/img/general/original/461342_3wRliMZbePOMR2JyLG_nj8F-FZ7yKKDyZhL8eUTyDRw.jpg', true, false, 'http://www.thefeve.com', 'https://www.yelp.com/biz/the-feve-oberlin', false, 'Feve Burger,Cilantro Lime Chicken Salad,Cuban Sandwich,Avocado Melt,Breakfast Burger,Turkey Reuben', '$$'),
('Timber Lodge', 'steakhouse', '2809 Pearl Rd, Medina, OH 44256', '4:00PM-9:00PM', '(330) 725-6288', 4, 'https://www.visitmedinacounty.com/wp-content/uploads/2015/11/timber-lodge-restaurant.jpg', true, true, 'http://timberlodgemedina.com', 'https://www.yelp.com/biz/timber-lodge-medina', false, 'Prime Rib,Lobster Tail,Scallops,Filet Mignon,Lobster Bisque,Asiago Mashed,Clam Chowder,Chicken Cordon Bleu, Beef Wellington', '$$$'),
('Amish Door Restaurant', 'american', '1210 Winesburg St, Wilmot, OH 44689', '11:00AM-7:00PM', '(330) 359-5464', 3, 'https://amishdoor.com/ManagedFiles/SlideShowSlides/91.jpg', true, true, 'https://amishdoor.com/', 'https://www.yelp.com/biz/amish-door-restaurant-wilmot', false, 'Broasted Chicken,Roast Beef,Turkey Dinner,Apple Fritters,', '$$'),
('Welshfield Inn', 'american', '14001 Main Market Rd, Burton, OH 44021', '11:30AM-8:00PM', '(440) 834-0190', 4, 'https://whbcwishes.com/wp-content/uploads/sites/55/2022/08/welshfield_inn.jpg', true, true, 'https://thedriftwoodgroup.com/restaurants/welshfield-inn/', 'https://www.yelp.com/biz/welsh-field-inn-troy-twp', false, 'Pot Roast,French Onion Soup,Prime Rib,Chicken Chopped Salad,Perch,Chicken Piccata,Walleye,', '$$$'),
('Cafe 422', 'italian', '4422 Youngstown Rd SE, Warren, OH 44484', '11:00AM-9:00PM', '(330) 369-2422', 3, 'https://www.wkbn.com/wp-content/uploads/sites/48/2023/02/cafe-422-warren-ohio-1.jpg?w=1280', true, true, 'https://cafe422.com/', 'https://www.yelp.com/biz/cafe-422-warren', false, 'Chicken Marsala,Shrimp Scampi,Almond Crusted Chicken,Twin Filet Mignon,Penne Mariana,Chicken Parmigiana,Eggplant Parmigiana', '$$'),
('Pickle Bills Lobster House', 'seafood', '101 River St, Grand River, OH 44045', '1:00PM-8:00PM', '(440) 352-6343', 3, 'https://www.picklebills.com/wp-content/uploads/2020/09/Pickle-Bills-Home-Clambake-2020-1080.jpg', true, true, 'http://picklebills.com', 'https://www.yelp.com/biz/pickle-bills-lobster-house-grand-river', false, 'Crab Legs,Prime Rib,Snow Crab,Peel and Eat Shrimp,Lobster Tail,Fried Perch Sandwich,Crab Cakes,Clam Bake,Grilled Walleye', '$$'),
('Oak and Embers Tavern', 'barbeque', '7774 Darrow Rd, Hudson, OH 44236', '11:00AM-9:00PM', '(234) 602-1056', 3, 'https://media2.clevescene.com/clevescene/imager/u/original/8869080/image1.jpg', true, true, 'http://oakandembers.com', 'https://www.yelp.com/biz/oak-and-embers-tavern-hudson-hudson', false, 'Pulled Pork,Burnt Ends,Brisket Melt,BBQ Chicken Salad,BLT Deviled Eggs,Beef Brisket,Pulled Pork Tacos,Smoked Wings,Beef Short Rib,Fried Chicken', '$$'),
('Blue Sky Restaurant', 'american', '917 N Leavitt Rd, Amherst, OH 44001', '8:00AM-8:00PM', '(440) 984-2583', 4, 'https://10619-2.s.cdn12.com/rests/original/501_500059986.jpg', true, false, 'https://www.blueskyrestaurant.net/', 'https://www.yelp.com/biz/blue-sky-restaurant-amherst', false, 'French Onion Soup,Philly Steak Supreme Sandwich,Chicken Noodle Soup,Philly Cheese Steak Sandwich,French Toast,Reuben,', '$'),
('Springfield Grille', 'american', '7413 Tiffany S, Youngstown, OH 44514', '12:00PM-9:00PM', '(330) 726-0895', 3, 'https://www.springfields.com/springfield-grille-boardman-oh/wp-content/uploads/sites/7/2014/09/11080633_10155400546725065_3177227015335013558_o-1250x640.gif', true, false, 'https://www.springfields.com', 'https://www.yelp.com/biz/springfield-grille-youngstown-4', false, 'Crab Cakes,New Zealand Lamb Chops,Lobster Bisque,Crispy Bacon Smokey Oysters Recipe, Winter Encrusted Cod', '$$$'),
('Salt', 'tapas', '17625 Detroit Ave, Lakewood, OH 44107', '5:00PM-10:00PM', '(216) 221-4866', 4, 'https://clevelandmagazine.azureedge.net/sitefinity/images/default-source/may-2022/salt-jill-vedaa83edd7fc-5e2b-4d98-8a3b-b29b15b0da41.jpg?sfvrsn=be04ea8c_1', true, false, 'http://saltcleveland.com', 'https://www.yelp.com/biz/salt-a-restaurant-lakewood', false, 'Calamari,White Bean Puree,Monkfish Liver,Chicken Liver Pate,Ostrich,Wagyu Tenderloin,Coal Grilled Sardines,Celery Root', '$$$'),
('Rood', 'american', '17001 Madison Ave, Lakewood, OH 44107', '4:30PM-10:00PM', '(216) 712-4506', 4, 'https://www.cleveland.com/resizer/jQu6aBFyh6MGsiYwfuhh7Gak0lU=/1280x0/smart/advancelocal-adapter-image-uploads.s3.amazonaws.com/expo.advance.net/img/9577cb152f/width2048/a36_03roodfoodandpie.jpeg', true, true, 'https://www.rfpie.com', 'yelp.com/biz/rood-lakewood', false, 'Salt & Honey Pie,Whiskey Chocolate Pie,Chocolate Tahini Custard,Baklava Pie,Coffee Rubbed Filet Mignon,Pumpkin Gnocchi,Sweet Corn Crab Cakes', '$$'),
('La Plaza Taqueria', 'mexican', '13609 Lakewood Heights Blvd B, Cleveland, OH 44107', '8:00AM-9:00PM', '(216) 476-8000', 4, 'https://clevelandmagazine.azureedge.net/sitefinity/images/default-source/cleveland-magazine/2022/march/la-plaza-tacos3e179c5e-4607-4a3e-ad6d-d4919e19b088.jpg?sfvrsn=b7ecea8c_1', true, true, 'https://www.plazasupermarket.com/', 'https://www.yelp.com/biz/la-plaza-supermarket-cleveland', false, 'Carne Asada,Chorizo Tacos,Asada Taco,Al Pastor Tacos,Pulled Chicken Tacos,Barbacoa Taco,Lengua,Pozole,Menudo', '$$$');

COMMIT TRANSACTION;
