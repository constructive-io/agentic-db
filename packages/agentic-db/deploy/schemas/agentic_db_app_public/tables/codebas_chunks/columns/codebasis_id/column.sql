-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/columns/codebasis_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_codebasis_id_idx


ALTER TABLE agentic_db_app_public.codebas_chunks 
  ADD COLUMN codebasis_id uuid;

