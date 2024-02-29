/* Add the site names and URLs */

INSERT INTO site (id, name, url, active)
VALUES (1, 'AmphibiaWeb',
        'https://amphibiaweb.org/cgi/amphib_query?where-scientific_name=${searchTerms}&rel-scientific_name=contains&include_synonymies=Yes',
        1);
INSERT INTO site (id, name, url, active)
VALUES (2, 'International Plant Names Index', 'https://ipni.org/?perPage=500&sort=published_desc&q=${searchTerms}', 1);
INSERT INTO site (id, name, url, active)
VALUES (3, 'The Reptile Database', 'http://reptile-database.reptarium.cz/search?search=${searchTerms}&submit=Search',
        1);


/* Set the extract rules for AmphibiaWeb */

UPDATE site
SET extract_rules = '{"title" : "title",' ||
                    '"items" : {' ||
                    '"selector": "div#main tbody tr",' ||
                    '"output": {' ||
                    '"scientificName": "td:nth-of-type(1)",' ||
                    '"redListStatus": "td:nth-of-type(4)",' ||
                    '"vernacularName": "td:nth-of-type(5)",' ||
                    '"family": "td:nth-of-type(6)",' ||
                    '"order": "td:nth-of-type(7)"' ||
                    '},' ||
                    '"type": "list"' ||
                    '},' ||
                    '"rawData" : {' ||
                    '"selector": "div#main tbody tr",' ||
                    '"output": "html",' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'AmphibiaWeb';


/* Set the scenario & extract rules for the International Plant Names Index */

UPDATE site
SET scenario      = '{"instructions":[' ||
                    '{"wait_for":"div.results-header"},' ||
                    '{"wait":5000}' ||
                    ']}',
    extract_rules = '{"title" : "title",' ||
                    '"items": {' ||
                    '"selector": "a.name-link",' ||
                    '"output": {' ||
                    '"details": ":nth-child(1)",' ||
                    '"name": "i:nth-of-type(1)",' ||
                    '"type": "i:nth-of-type(2)",' ||
                    '"publication": "small"' ||
                    '},' ||
                    '"type": "list"' ||
                    '},' ||
                    '"rawData" : {' ||
                    '"selector": "a.name-link",' ||
                    '"output": "html",' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'International Plant Names Index';


/* Set the extract rules for The Reptile Database */

UPDATE site
SET extract_rules = '{"title" : "title",' ||
                    '"items": {' ||
                    '"selector": "div#content li a",' ||
                    '"output": {' ||
                    '"details": ":nth-child(1)",' ||
                    '"name": "em"' ||
                    '},' ||
                    '"type": "list"' ||
                    '},' ||
                    '"rawData" : {' ||
                    '"selector": "div#content li a",' ||
                    '"output": "html",' ||
                    '"type": "list"' ||
                    '}}'
WHERE name = 'The Reptile Database';
