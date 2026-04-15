-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table


GRANT INSERT ON "agentic_db_app_public".contact_emails TO authenticated;

