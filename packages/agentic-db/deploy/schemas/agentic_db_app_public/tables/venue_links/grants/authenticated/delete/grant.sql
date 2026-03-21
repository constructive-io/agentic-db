-- Deploy: schemas/agentic_db_app_public/tables/venue_links/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/embedding/column


GRANT DELETE ON agentic_db_app_public.venue_links TO authenticated;

