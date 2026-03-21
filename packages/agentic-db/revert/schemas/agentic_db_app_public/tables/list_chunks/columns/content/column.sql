-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.list_chunks 
  DROP COLUMN content RESTRICT;


