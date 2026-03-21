-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding/column


GRANT UPDATE ON agentic_db_app_public.event_chunks TO authenticated;

