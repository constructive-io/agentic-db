-- Deploy: schemas/agent_db_app_public/tables/contact_emails/constraints/contact_emails_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_emails 
  ADD CONSTRAINT contact_emails_pkey PRIMARY KEY (id);

