-- Deploy: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/priority/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_project_type_idx


CREATE INDEX projects_priority_idx ON "agentic_db_app_public".projects USING BTREE ( priority );

