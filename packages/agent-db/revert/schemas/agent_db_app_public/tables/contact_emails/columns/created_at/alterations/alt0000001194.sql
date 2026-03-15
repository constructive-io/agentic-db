-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/created_at/alterations/alt0000001194


ALTER TABLE agent_db_app_public.contact_emails 
  ALTER COLUMN created_at DROP NOT NULL;


