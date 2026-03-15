-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_task_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/task_type/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_google_place_id_idx


CREATE INDEX tasks_task_type_idx ON "agent_db_app_public".tasks USING BTREE ( task_type );

