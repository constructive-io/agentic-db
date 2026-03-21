-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN embedding RESTRICT;


