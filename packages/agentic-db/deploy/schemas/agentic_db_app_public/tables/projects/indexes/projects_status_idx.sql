-- Deploy: schemas/agentic_db_app_public/tables/projects/indexes/projects_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_name_gin_idx


CREATE INDEX projects_status_idx ON "agentic_db_app_public".projects USING BTREE ( status );

