-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_name_gin_idx


CREATE INDEX tasks_status_idx ON "agentic_db_app_public".tasks USING BTREE ( status );

