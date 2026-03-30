-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/columns/content/alterations/alt0000001626
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  ALTER COLUMN content SET NOT NULL;

