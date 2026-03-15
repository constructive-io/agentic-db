-- Revert: schemas/agent_db_app_public/tables/contact_emails/columns/updated_at/alterations/alt0000001196


ALTER TABLE agent_db_app_public.contact_emails 
  ALTER COLUMN updated_at DROP NOT NULL;


