-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.projects_chunks 
  DROP COLUMN embedding RESTRICT;


