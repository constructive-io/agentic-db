-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/email/alterations/alt0000001198


ALTER TABLE agent_db_app_public.contact_emails 
  ALTER COLUMN email DROP NOT NULL;


