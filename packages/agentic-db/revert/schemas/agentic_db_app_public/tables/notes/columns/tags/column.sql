-- Revert: schemas/agentic_db_app_public/tables/notes/columns/tags/column


ALTER TABLE agentic_db_app_public.notes 
  DROP COLUMN tags RESTRICT;


