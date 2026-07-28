-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/promoted_email_id/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN promoted_email_id RESTRICT;


