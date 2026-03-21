-- Revert: schemas/agentic_db_app_public/tables/notes/columns/created_at/column


ALTER TABLE agentic_db_app_public.notes 
  DROP COLUMN created_at RESTRICT;


