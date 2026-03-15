-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/contact_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/columns/embedding/column


ALTER TABLE agent_db_app_public.contact_emails 
  ADD COLUMN contact_id uuid;

