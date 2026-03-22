-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/created_at/alterations/alt0000002719
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.codebas_chunks 
  ALTER COLUMN created_at SET NOT NULL;

