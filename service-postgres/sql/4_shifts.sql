\copy shifts(task_id, name, description, slots) from '/docker-entrypoint-initdb.d/csv/shifts.csv' delimiter ',' csv header;
