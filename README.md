# SCARLET-API

SCARLET-API  is a RESTful API that provides a way to create, update, delete and retrieve news updates. It also provides a way to create and retrieve users.

# SET-UP
- Git (to clone the repository)
- PostgreSQL (to run the database)
- Postman (to test the API)
- Railway  (for deployment)

# SET-UP INSTALLATION
- Clone the repository
- Run the following commands in the repository:
    - cd <path_to_project> (if you've cloned the repository)
    - bundle install
- Open Postman to test the API endpoints or use the following link:
    - http://localhost:8000/<the_endpoint>

# users
> POST

/user/create/
>response

{
  "firstname": "string",

  "lastname": "string",

  "email": "user@example.com",

  "password": "string",

  "image_url":"string",

  "description": "string"
}

> Update

/user/update/

>response

{
  "firstname": "updated string",

  "lastname": " updated string",

  "email": " updated user@example.com",


  "image_url":" updated string"

}

> Delete

/user/destroy/

>response

# Articles

create
/articles/create

>response

{
        "id": 2,

        "title": "",

        "image_url": "",

        "category": "",

        "rating": ,

        "user": {
            "id": 1,

            "firstname": "",

            "lastname": "",

            "email": "",

            "image_url": "",

            "description": ""
        }
    },

    update

> articles/update

>response

{
        "id": 2,

        "title": "updated string",

        "image_url": "updated string",

        "category": "updated string",

        "rating": "updated integer"
 }

delete

> articles/destroy

response

[]

# Known Bugs

So far so good there are no bugs related to this project 

# Licence

MIT License

Copyright (c) [2022] [Christine Nyaga]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



## Authors Info
___
email - nyagakristine@gmail.com