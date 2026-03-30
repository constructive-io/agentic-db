-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/columns/id/alterations/alt0000001623
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  ALTER COLUMN id SET NOT NULL;

