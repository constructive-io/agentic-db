-- Deploy: schemas/agentic_db_app_public/tables/venue_links/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/embedding_stale/alterations/alt0000001090


GRANT UPDATE ON "agentic_db_app_public".venue_links TO authenticated;

