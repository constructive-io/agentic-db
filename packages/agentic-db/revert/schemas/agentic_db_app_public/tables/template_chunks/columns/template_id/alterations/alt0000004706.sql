-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/template_id/alterations/alt0000004706


ALTER TABLE agentic_db_app_public.template_chunks 
  ALTER COLUMN template_id DROP NOT NULL;


