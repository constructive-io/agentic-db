-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/alterations/alt0000001879
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".codebase_dependencies 
  ALTER COLUMN entity_id SET NOT NULL;

