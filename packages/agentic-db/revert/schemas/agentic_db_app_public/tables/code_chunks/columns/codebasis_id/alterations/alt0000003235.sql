-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/codebasis_id/alterations/alt0000003235


ALTER TABLE agentic_db_app_public.code_chunks 
  ALTER COLUMN codebasis_id DROP NOT NULL;


