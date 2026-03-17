-- Deploy: schemas/agentic_db_app_public/tables/event_links/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/embedding/column


GRANT UPDATE ON "agentic_db_app_public".event_links TO authenticated;

