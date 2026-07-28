-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/id/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN id RESTRICT;


