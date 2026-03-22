-- Revert: schemas/agentic_db_app_public/tables/events/columns/embedding/column


ALTER TABLE agentic_db_app_public.events 
  DROP COLUMN embedding RESTRICT;


