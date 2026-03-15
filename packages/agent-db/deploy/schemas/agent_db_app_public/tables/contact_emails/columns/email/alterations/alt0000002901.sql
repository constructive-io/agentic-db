-- Deploy: schemas/agent_db_app_public/tables/contact_emails/columns/email/alterations/alt0000002901
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/email/column
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/updated_at/alterations/alt0000002900


ALTER TABLE "agent_db_app_public".contact_emails 
  ALTER COLUMN email SET NOT NULL;

