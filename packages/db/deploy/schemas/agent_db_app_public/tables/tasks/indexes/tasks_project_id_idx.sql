-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_project_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/project_id/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_priority_idx


CREATE INDEX tasks_project_id_idx ON "agent_db_app_public".tasks USING BTREE ( project_id );

