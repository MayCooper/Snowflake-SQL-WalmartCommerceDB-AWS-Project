SELECT * FROM ZOMATO_RESTAURANTS;

SELECT JSON_DATA:restaurant
FROM zomato_restaurants;

SELECT JSON_DATA:restaurant.name, JSON_DATA:restaurant.user_rating
FROM ZOMATO_RESTAURANTS;

--GET RESTAURANT RATINGS TEXT

SELECT JSON_DATA:restaurant.name, JSON_DATA:restaurant.user_rating.rating_text
FROM ZOMATO_RESTAURANTS;

--MORE COMPLEX QUERY SPECIFYING DATATYPE

SELECT 
	JSON_DATA:restaurant.name::String, 
	JSON_DATA:restaurant.user_rating.rating_text::String AS RatingText, 
	JSON_DATA:restaurant.location as Location
FROM ZOMATO_RESTAURANTS
WHERE RatingText = 'Excellent' 
OR RatingText = 'Very Good';

--SELECTING OFFERS

SELECT JSON_DATA:restaurant.name::String, JSON_DATA:restaurant.offers[0]
FROM ZOMATO_RESTAURANTS;

--SELECTING A PARTICULAR OFFER IN A FLATTENED FORMAT (JSON)

SELECT JSON_DATA:restaurant.name::String, o.value::String AS Offer 
FROM ZOMATO_RESTAURANTS, LATERAL FLATTEN (INPUT => JSON_DATA:restaurant.offers) o;
