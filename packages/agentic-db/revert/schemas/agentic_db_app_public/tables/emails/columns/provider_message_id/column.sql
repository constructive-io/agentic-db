-- Revert: schemas/agentic_db_app_public/tables/emails/columns/provider_message_id/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN provider_message_id RESTRICT;


