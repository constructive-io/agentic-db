-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.project_chunks 
  DROP COLUMN content RESTRICT;


