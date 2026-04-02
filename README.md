# Voluntariat El Tingladu

Aplicació web desenvolupada amb Python per a gestionar el voluntariat d'[El Tingladu](https://www.eltingladu.cat/), un festival de música i cultura catalana que se celebra des de 2008 a Vilanova i la Geltrú.

Web application developed with Python to manage the volunteers of [El Tingladu](https://www.eltingladu.cat/), a Catalan music and culture festival that has been held since 2008 in Vilanova i la Geltrú.

## Python Virtual Environment

Preparation:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

To generate the requirements file:

```bash
pip freeze > requirements.txt
deactivate
```

## Database

PostgreSQL is the database of the application. Create a database using the script [reset_test_database.bash](./postgres/reset_test_database.bash) after adapting it to your environment.

## Run the Application in Development

First create a `.env` file using the `.env.template` as model.

Then run the flask app:

```
flask run --debug
```

Check the file [1_users_demo.sql](./postgres/1_users_demo.sql). Password of all demo users is **patata**. We take security very seriously.

## Run the Application in Production

The application can be run with `gunicorn`:

    gunicorn -w 4 -b 127.0.0.1:8080 'voluntariat_app:create_app()'

