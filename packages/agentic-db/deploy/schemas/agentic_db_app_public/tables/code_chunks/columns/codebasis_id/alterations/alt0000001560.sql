-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/codebasis_id/alterations/alt0000001560
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/codebasis_id/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN codebasis_id SET NOT NULL;

