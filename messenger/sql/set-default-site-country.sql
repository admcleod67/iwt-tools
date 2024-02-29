/* Set the default site country */

UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Indonesia') WHERE name = 'Shopee Indonesia';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Malaysia') WHERE name = 'Shopee Malaysia';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Singapore') WHERE name = 'Shopee Singapore';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Taiwan, Province of China') WHERE name = 'Shopee Taiwan';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Viet Nam') WHERE name = 'Shopee Vietnam';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Thailand') WHERE name = 'Shopee Thailand';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Philippines') WHERE name = 'Shopee Philippines';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Brazil') WHERE name = 'Shopee Brazil';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Mexico') WHERE name = 'Shopee Mexico';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Colombia') WHERE name = 'Shopee Colombia';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Chile') WHERE name = 'Shopee Chile';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Indonesia') WHERE name = 'Tokopedia';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Singapore') WHERE name = 'Carousell';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Indonesia') WHERE name = 'Bukalapak';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Indonesia') WHERE name = 'Lazada Indonesia';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Malaysia') WHERE name = 'Lazada Malaysia';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Singapore') WHERE name = 'Lazada Singapore';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Viet Nam') WHERE name = 'Lazada Vietnam';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Thailand') WHERE name = 'Lazada Thailand';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'Philippines') WHERE name = 'Lazada Philippines';
UPDATE site SET default_country_id = (SELECT id FROM country WHERE name = 'China') WHERE name = 'Alibaba';
