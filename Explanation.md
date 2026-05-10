# Voluntariat El Tingladu

**Voluntariat El Tingladu** is a **volunteer management web application** for a Catalan music and culture festival (*El Tingladu*) held annually in Vilanova i la Geltrú, Spain.

## What it does

It manages the full volunteer lifecycle for the festival:

- **Registration & Auth** -- Volunteers sign up via invitation links, with role-based access (superadmin, admin, partner, volunteer, worker).
- **Task & Shift Management** -- Admins define tasks (bar service, ticket booths, kitchen, assembly, etc.) and time slots. Volunteers pick which shifts to work.
- **Meals & Dietary Preferences** -- Volunteers select meals and declare dietary needs (vegan, vegetarian, gluten-free, lactose-free).
- **Rewards Calculation** -- The system automatically computes rewards (tickets/accreditations and cash) based on shifts worked, with edition-specific business rules.
- **Admin Reporting** -- Admins can view summaries and export data to Excel.
- **Email Notifications** -- Automated emails for signup confirmation, shift summaries, password resets, and incidence reports via Gmail SMTP.

## Tech stack

- **Backend**: Python 3, Flask, SQLAlchemy, PostgreSQL
- **Frontend**: Jinja2 templates, Bootstrap 4, jQuery
- **Deployment**: Gunicorn + Nginx + systemd with Let's Encrypt SSL
- **Other**: hashids for URL obfuscation, openpyxl for Excel export, threading-based async email queue

## Structure

The codebase is organized as a Flask app factory with 4 route blueprints (`main`, `auth`, `admin`, `volunteer`), 6 custom plugins (params, hashid, tasks, gmail, excel, rewards), 9 SQLAlchemy models, and ~35 Jinja2 templates. All UI text is in Catalan, externalized to an INI file. The database is seeded via SQL scripts under `postgres/`.

It's a well-structured, single-purpose application with no test suite currently in place.
