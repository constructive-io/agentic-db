-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/codebasis_id/alterations/alt0000006195


ALTER TABLE agentic_db_app_public.codebas_chunks 
  ALTER COLUMN codebasis_id DROP NOT NULL;


