-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/labels/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN labels RESTRICT;


