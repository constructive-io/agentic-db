-- Deploy: schemas/agentic_db_app_public/tables/processes/indexes/processes_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/threads/indexes/threads_status_idx


CREATE INDEX processes_status_idx ON "agentic_db_app_public".processes USING BTREE ( status );

