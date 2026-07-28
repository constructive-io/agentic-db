-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/raw_data/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN raw_data RESTRICT;


