lint:
	autoflake --in-place --recursive --exclude="*/migrations/*,venv,local,media,templates" .
	isort .
	black --line-length 120 .
	flake8 .

run_local:
	python manage.py runserver

run_server:
	python manage.py runserver 0.0.0.0:8000

make_migrations:
	python manage.py makemigrations

migrate:
	python manage.py migrate

media_backup:
	python manage.py mediabackup

database_backup:
	python manage.py dbbackup

database_backup_restore:
	python manage.py dbrestore

media_backup_restore:
	python manage.py mediarestore
