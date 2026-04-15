-- Deploy: schemas/agentic_db_app_public/tables/event_links/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table


GRANT INSERT ON "agentic_db_app_public".event_links TO authenticated;

