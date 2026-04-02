\copy partner_dnis(dni) from './csv/dnis_demo.csv' delimiter ',' csv header;
update partner_dnis set dni = upper(dni); -- tots en majúscules