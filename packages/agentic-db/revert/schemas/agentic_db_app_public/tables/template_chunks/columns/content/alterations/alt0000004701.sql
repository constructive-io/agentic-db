-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/content/alterations/alt0000004701


ALTER TABLE agentic_db_app_public.template_chunks 
  ALTER COLUMN content DROP NOT NULL;


