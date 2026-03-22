-- Deploy: schemas/agentic_db_app_public/tables/projects/indexes/projects_project_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/project_type/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_status_idx


CREATE INDEX projects_project_type_idx ON "agentic_db_app_public".projects USING BTREE ( project_type );

