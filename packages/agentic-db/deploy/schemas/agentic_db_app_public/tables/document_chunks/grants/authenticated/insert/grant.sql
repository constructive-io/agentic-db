-- Deploy: schemas/agentic_db_app_public/tables/document_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/document_chunks/table
-- requires: schemas/agentic_db_app_public/tables/calendar_event_chunks/columns/embedding/column


GRANT INSERT ON "agentic_db_app_public".document_chunks TO authenticated;

