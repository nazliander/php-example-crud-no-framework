## Example PHP-CRUD Project (Without Framework)

This is an example project that I prepared while studying for PHP and using CRUD operations with native PHP. Followed a structure described in [this tutorial.](https://codeofaninja.com/2017/02/create-simple-rest-api-in-php.html)

It uses Docker (compose) for spinning up MySQL and PHP locally, initializes a Netflix TV Show database with less than 100 records. Retrieved the dataset [from Kaggle.](https://www.kaggle.com/shivamb/netflix-shows)

### To Test Methods

```
docker-compose up
```

#### Create

Example input:

```bash
curl -X POST -H "Content-Type: application/json; charset=UTF-8" \
    -d '{"title": "Lost Highway", "description": "Yet Another Crazy David Lynch movie, criticizing Hollywood economics.", "type": "Movie", "release_year": 1997, "listed_in": "Art-house, Neo-Noir"}' \
    http://localhost/shows/create.php
```

Example output:

```json
{
    "message": "Show was created."
}
```

#### Read

Example input:

```bash
curl http://localhost/shows/read.php
```

Example output:

```json
{
    "records":
    [
        {
            "show_id": "39",
            "type": "Movie",
            "description": "Bogged down with money problems, a couple grows cautious of each other but hit the lottery and decide to stay together - till death do they part.",
            "title": "Kill Me If You Dare",
            "release_year": "2019",
            "listed_in": [
                "Comedies",
                "International Movies",
                "Romantic Movies"
            ]
        },
        {
            "show_id": "1",
            "type": "Movie",
            "description": "Before planning an awesome wedding for his grandfather, a polar bear king must take back a stolen artifact from an evil archaeologist first.",
            "title": "Norm of the North: King Sized Adventure",
            "release_year": "2019",
            "listed_in": [
                "Children & Family Movies",
                "Comedies"
            ]
        }
    ]
}
```

#### Update

Example input:

```bash
curl -X POST -H "Content-Type: application/json; charset=UTF-8" \
    -d '{"show_id": 205, "title": "Lost Highway", "description": "Yet Another Crazy David Lynch movie, criticizing Hollywood economics.", "type": "Movie", "release_year": 1997, "listed_in": "Art-house, Neo-Noir, Postmodern"}' \
    http://localhost/shows/update.php
```

Example output:

```json
{"message": "Show is updated."}
```

#### Delete

Example input:

```bash
curl -X POST -H "Content-Type: application/json; charset=UTF-8" \
    -d '{"show_id": 205}' \
    http://localhost/shows/delete.php
```

Example output:

```json
{"message": "Show is deleted."}
```

#### Search

Example input:

```bash
curl http://localhost/shows/search.php?s=detective
```

Example output:

```json
{
    "records": [
        {
            "show_id": "62",
            "type": "TV Show",
            "description": "A detective seizes a precious opportunity to change the past when she finds she can communicate with her deceased, estranged father via a time warp.",
            "title": "Frequency",
            "release_year": "2016",
            "listed_in": [
                "Crime TV Shows",
                "TV Dramas",
                "TV Mysteries"
            ]
        }
    ]
}
```
