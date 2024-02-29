/* Add the site names and URLs */

INSERT INTO site (id, name, url, active)
VALUES (1, 'Shopee Indonesia', 'https://shopee.co.id/search?keyword=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (2, 'Shopee Malaysia', 'https://shopee.com.my/search?keyword=${searchTerms}', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (3, 'Shopee Singapore', 'https://shopee.sg/search?keyword=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (4, 'Shopee Taiwan', 'https://shopee.tw/search?keyword=${searchTerms}', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (5, 'Shopee Vietnam', 'https://shopee.vn/search?keyword=${searchTerms}', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (6, 'Shopee Thailand', 'https://shopee.co.th/search?keyword=${searchTerms}', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (7, 'Shopee Philippines', 'https://shopee.ph/search?keyword=${searchTerms}', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (8, 'Shopee Brazil', 'https://shopee.com.br/search?keyword=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (9, 'Shopee Mexico', 'https://shopee.com.mx/search?keyword=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (10, 'Shopee Colombia', 'https://shopee.com.co/search?keyword=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (11, 'Shopee Chile', 'https://shopee.cl/search?keyword=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (12, 'Tokopedia', 'https://www.tokopedia.com/search?st=product&q=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (13, 'Carousell', 'https://www.carousell.sg/', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (14, 'Bukalapak', 'https://www.bukalapak.com/products?search%5Bkeywords%5D=${searchTerms}', TRUE);
INSERT INTO site (id, name, url, active)
VALUES (15, 'Lazada Indonesia', 'https://www.lazada.co.id/', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (16, 'Lazada Malaysia', 'https://www.lazada.com.my/', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (17, 'Lazada Singapore', 'https://www.lazada.sg/', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (18, 'Lazada Vietnam', 'https://www.lazada.vn/', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (19, 'Lazada Thailand', 'https://www.lazada.co.th/', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (20, 'Lazada Philippines', 'https://www.lazada.com.ph/', FALSE);
INSERT INTO site (id, name, url, active)
VALUES (21, 'Alibaba', 'https://www.alibaba.com/', TRUE);


/* Set the scenarios for all Shopee sites */

UPDATE site
SET scenario      = '{"instructions":[' ||
                    '{"wait_for":".shopee-search-item-result"},' ||
                    '{"wait_for":".shopee-search-item-result__items"},' ||
                    '{"wait_for":"script[type=''application/ld+json'']"},' ||
                    '{"wait":20000}' ||
                    ']}',
    extract_rules = '{"linked_data": {' ||
                    '"selector": "script[type=''application/ld+json'']",' ||
                    '"output": "html",' ||
                    '"type": "list"' ||
                    '}}'
WHERE name LIKE 'Shopee%';


/* Set the scenario & extract_rules for Carousell */

UPDATE site
SET scenario      = '{"instructions":[' ||
                    '{"wait":1000},' ||
                    '{"fill":["input[type=''text'']","${searchTerms}"]},' ||
                    '{"wait":1000},' ||
                    '{"click":"button[type=''submit''"},' ||
                    '{"wait":15000}' ||
                    ']}',
    extract_rules = '{"products" : {' ||
                    '"selector": "div[data-testid^=''listing-card'']",' ||
                    '"output": {' ||
                    '"name": "p[style=''--max-line:2;'']",' ||
                    '"url": "a:nth-of-type(2)@href",' ||
                    '"image": "img[style]@src",' ||
                    '"offerPrice": "p[title]",' ||
                    '"sellerName": "p[data-testid=''listing-card-text-seller-name'']",' ||
                    '"sellerUrl": "a:nth-of-type(1)@href",' ||
                    '"sellerImage": "img[title='''']@src",' ||
                    '"itemCondition": "a:nth-of-type(2) p:nth-of-type(2)"' ||
                    '},' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'Carousell';


/* Set the scenario & extract rules for Tokopedia */

UPDATE site
SET scenario      = '{"instructions":[' ||
                    '{"wait":1000},' ||
                    '{"scroll_y":1000},' ||
                    '{"wait":10000}' ||
                    ']}',
    extract_rules = '{"products": {' ||
                    '"selector": "div[data-testid=''divProductWrapper'']",' ||
                    '"output": { ' ||
                    '"name": "div.prd_link-product-name",' ||
                    '"url": "a[title]@href",' ||
                    '"image": "img[data-testid^=''img'']@src",' ||
                    '"offerPrice": "div.prd_link-product-price",' ||
                    '"sellerName": "span.prd_link-shop-name",' ||
                    '"ratingValue": "span.prd_rating-average-text"' ||
                    '},' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'Tokopedia';


/* Set the scenario & extract rules for Bukalapak */

UPDATE site
SET scenario      = '{"instructions":[' ||
                    '{"wait":1000},' ||
                    '{"scroll_y":1000},' ||
                    '{"wait":10000}' ||
                    ']}',
    extract_rules = '{"products": {' ||
                    '"selector": "div.te-product-card",' ||
                    '"output": {' ||
                    '"name": "section.bl-product-card-new__name a",' ||
                    '"url": "section.bl-product-card-new__name a@href",' ||
                    '"image": "a.slide img@src",' ||
                    '"offerPrice": "p.bl-product-card-new__price",' ||
                    '"offerCurrency": "p.bl-product-card-new__currency",' ||
                    '"sellerName": "p.bl-product-card-new__store-name",' ||
                    '"sellerUrl": "p.bl-product-card-new__store-name a@href",' ||
                    '"location": "p.bl-product-card-new__store-location"' ||
                    '},' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'Bukalapak';


/* Set the scenario & extract rules for Alibaba.com */

UPDATE site
SET scenario      = '{"instructions":[' ||
                    '{"wait":1000},' ||
                    '{"fill":["input.search-bar-input","${searchTerms}"]},' ||
                    '{"click":"button"},' ||
                    '{"wait":10000}' ||
                    ']}',
    extract_rules = '{"products": {' ||
                    '"selector": "div.traffic-product-card",' ||
                    '"output": {' ||
                    '"name":"p.elements-title-normal__content",' ||
                    '"url":"a.elements-title-normal@href",' ||
                    '"image": "img[data-search-gt-img]@src",' ||
                    '"offerPrice": "p.elements-offer-price-normal",' ||
                    '"ratingValue": "span.seb-supplier-review-gallery-test__score span",' ||
                    '"ratingCount": "span.seb-supplier-review__review-count",' ||
                    '"location": "span.seller-tag__country"' ||
                    '},' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'Alibaba';
