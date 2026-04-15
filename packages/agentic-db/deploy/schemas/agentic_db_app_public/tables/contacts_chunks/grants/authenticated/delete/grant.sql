-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table


GRANT DELETE ON "agentic_db_app_public".contacts_chunks TO authenticated;

