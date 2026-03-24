-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/id/alterations/alt0000001564
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/id/column


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN id SET NOT NULL;

