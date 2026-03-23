-- Revert: schemas/agentic_db_app_public/tables/notes/columns/content/column


ALTER TABLE agentic_db_app_public.notes 
  DROP COLUMN content RESTRICT;


