-- Deploy: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/status/column
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_name_gin_idx


CREATE INDEX ideas_status_idx ON "agentic_db_app_public".ideas USING BTREE ( status );

