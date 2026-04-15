-- Deploy: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table


GRANT UPDATE ON "agentic_db_app_public".contacts TO authenticated;

