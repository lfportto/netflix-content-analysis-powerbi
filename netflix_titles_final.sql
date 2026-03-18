CREATE TABLE titles_tratado AS
SELECT
    show_id AS `Show ID`,
    type AS Type,
    title AS Title,
    director AS Director,
    cast AS Cast,
    country AS Country,
    #Convert to date format
	CASE
		WHEN date_added IS NULL OR TRIM(date_added) = ''
		THEN NULL
		ELSE STR_TO_DATE(date_added, '%M %d, %Y')
	END AS `Date Added`,
    release_year AS `Release Year`,
    #Correct the duraction column
    CASE
        WHEN (duration IS NULL OR TRIM(duration) = '')
             AND rating LIKE '%min%'
        THEN rating
        ELSE duration
    END AS Duration,
	#Return only the number of minutes from each movie/TV show
	CASE
		WHEN Type = 'Movie' 
			 AND duration IS NOT NULL 
			 AND duration != '' 
			 AND duration LIKE '% min'
		THEN CAST(SUBSTRING_INDEX(duration, ' ', 1) AS SIGNED)
		ELSE NULL
	END AS `Movie Duration`,
    rating AS `USA Indicative Rating`,
    #Create new column with BR standard rating
    CASE
        WHEN rating IN ('G','TV-G','TV-Y') THEN 'Free'
        WHEN rating IN ('TV-Y7','TV-Y7-FV','PG') THEN '10 years old'
        WHEN rating IN ('TV-PG','PG-13') THEN '12 years old'
        WHEN rating = 'TV-14' THEN '14 years old'
        WHEN rating = 'R' THEN '16 years old'
        WHEN rating IN ('TV-MA','NC-17') THEN '18 years old'
        WHEN rating IN ('NR','UR') THEN 'Not classified'
        WHEN rating LIKE '%min%' THEN NULL
        ELSE 'N/A'
    END AS `BR Indicative Rating`,
    #Create new column to sort the rating columns
    CASE
        WHEN rating IN ('G','TV-G','TV-Y') THEN '0'
        WHEN rating IN ('TV-Y7','TV-Y7-FV','PG') THEN '1'
        WHEN rating IN ('TV-PG','PG-13') THEN '2'
        WHEN rating = 'TV-14' THEN '3'
        WHEN rating = 'R' THEN '4'
        WHEN rating IN ('TV-MA','NC-17') THEN '5'
        WHEN rating IN ('NR','UR') THEN '999'
        WHEN rating LIKE '%min%' THEN NULL
        ELSE '9'
	END AS `Rating Sort`,
    listed_in AS `Listed In`,
    description AS Description
FROM titles;
