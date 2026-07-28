-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/ingested_at/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN ingested_at RESTRICT;


