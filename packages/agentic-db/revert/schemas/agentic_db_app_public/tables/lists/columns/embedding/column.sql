-- Revert: schemas/agentic_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE agentic_db_app_public.lists 
  DROP COLUMN embedding RESTRICT;


