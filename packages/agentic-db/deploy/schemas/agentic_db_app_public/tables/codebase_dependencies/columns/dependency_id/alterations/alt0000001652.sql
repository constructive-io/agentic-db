-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/dependency_id/alterations/alt0000001652
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/dependency_id/column


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN dependency_id SET NOT NULL;

