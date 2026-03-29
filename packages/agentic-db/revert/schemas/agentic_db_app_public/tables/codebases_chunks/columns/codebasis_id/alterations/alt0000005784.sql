-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/codebasis_id/alterations/alt0000005784


ALTER TABLE agentic_db_app_public.codebases_chunks 
  ALTER COLUMN codebasis_id DROP NOT NULL;


