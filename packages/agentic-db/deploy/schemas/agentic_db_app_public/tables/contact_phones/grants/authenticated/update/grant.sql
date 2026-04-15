-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table


GRANT UPDATE ON "agentic_db_app_public".contact_phones TO authenticated;

