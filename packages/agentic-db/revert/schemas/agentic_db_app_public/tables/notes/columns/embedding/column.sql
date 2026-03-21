-- Revert: schemas/agentic_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE agentic_db_app_public.notes 
  DROP COLUMN embedding RESTRICT;


