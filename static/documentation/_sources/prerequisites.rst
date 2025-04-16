Prerequisites
=============

Software
--------

Generally speaking, requirements are the following:

- A GNU/Linux distribution. Tested on Debian Bookworm and Ubuntu 22.04.3 LTS
- Python version >= 3.10. Tested with Python 3.11 and 3.12
- `Kvrocks <https://github.com/apache/kvrocks>`_ database
- `Poetry <https://python-poetry.org>`_


Optionally:

- PostgreSQL server for storage related to the users.
- An email server — outgoing email for the accounts confirmation
  (password recovery, etc.);

Postfix, or an equivalent software, is required for the email notifications.

For the Web server you can use Gunicorn, uWSGI, Apache or Nginx.


Hardware
--------


Network
-------

The deployment on the different servers requires an Internet connection since
the updates are retrieved from the GitHub repository.
