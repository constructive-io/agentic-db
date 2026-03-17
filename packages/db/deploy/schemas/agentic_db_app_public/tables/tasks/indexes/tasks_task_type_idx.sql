-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_task_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/task_type/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_google_place_id_idx


CREATE INDEX tasks_task_type_idx ON "agentic_db_app_public".tasks USING BTREE ( task_type );

