-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/email/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/updated_at/alterations/alt0000001197


ALTER TABLE agent_db_app_public.contact_emails 
  ADD COLUMN email text;

