-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table


GRANT UPDATE ON "agentic_db_app_public".contact_emails TO authenticated;

