-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/is_primary/alterations/alt0000001200


ALTER TABLE agent_db_app_public.contact_emails 
  ADD COLUMN embedding vector(768);

