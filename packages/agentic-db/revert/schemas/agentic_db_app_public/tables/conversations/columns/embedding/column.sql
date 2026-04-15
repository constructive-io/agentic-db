-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/embedding/column


ALTER TABLE agentic_db_app_public.conversations 
  DROP COLUMN embedding RESTRICT;


