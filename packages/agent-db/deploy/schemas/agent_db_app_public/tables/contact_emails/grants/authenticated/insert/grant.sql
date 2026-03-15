-- Deploy: schemas/agent_db_app_public/tables/contact_emails/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_emails/table
-- requires: schemas/agent_db_app_public/tables/messages/constraints/messages_email_account_id_fkey/constraint


GRANT INSERT ON "agent_db_app_public".contact_emails TO authenticated;

