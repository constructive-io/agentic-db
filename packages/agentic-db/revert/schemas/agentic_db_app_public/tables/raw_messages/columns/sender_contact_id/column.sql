-- Revert: schemas/agentic_db_app_public/tables/raw_messages/columns/sender_contact_id/column


ALTER TABLE agentic_db_app_public.raw_messages 
  DROP COLUMN sender_contact_id RESTRICT;


