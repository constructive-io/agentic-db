-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/indexes/codebase_dependencies_codebase_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebase_id/column


CREATE INDEX codebase_dependencies_codebase_id_idx ON "agentic_db_app_public".codebase_dependencies USING BTREE ( codebase_id );

