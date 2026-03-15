-- Deploy: schemas/agent_db_app_public/tables/contact_phones/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_phones/table
-- requires: schemas/agent_db_app_public/tables/contact_emails/columns/embedding/column


GRANT INSERT ON agent_db_app_public.contact_phones TO authenticated;

