-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table


GRANT UPDATE ON "agentic_db_app_public".events_chunks TO authenticated;

