-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/body_text/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN body_text RESTRICT;


