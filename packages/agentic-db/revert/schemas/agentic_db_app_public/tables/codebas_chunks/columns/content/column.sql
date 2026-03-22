-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.codebas_chunks 
  DROP COLUMN content RESTRICT;


