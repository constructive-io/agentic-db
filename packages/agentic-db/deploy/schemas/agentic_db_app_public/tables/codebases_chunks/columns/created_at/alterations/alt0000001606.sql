-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/columns/created_at/alterations/alt0000001606
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

