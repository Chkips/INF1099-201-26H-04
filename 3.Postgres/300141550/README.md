
Invoke-WebRequest `
  https://raw.githubusercontent.com/jOOQ/sakila/master/postgres-sakila-db/postgres-sakila-schema.sql `
  -OutFile postgres-sakila-schema.sql

Invoke-WebRequest `
  https://raw.githubusercontent.com/jOOQ/sakila/master/postgres-sakila-db/postgres-sakila-insert-data.sql `
  -OutFile postgres-sakila-insert-data.sql



commande pour entrer dans la base de donnee 
podman exec -it postgres psql -U postgres -d appdb

<img width="945" height="482" alt="image" src="https://github.com/user-attachments/assets/df792af6-75e3-4e3b-8dcf-1ddf9f7b1b80" />

<img width="945" height="500" alt="image" src="https://github.com/user-attachments/assets/53dc6ca2-d919-4f81-a6c8-828074ed080e" />


Exploration de la base Sakila
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/f55cf870-2e68-4d95-b0da-582d354b8c69" />

