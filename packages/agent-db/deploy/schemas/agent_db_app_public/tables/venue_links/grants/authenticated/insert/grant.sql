-- Deploy: schemas/agent_db_app_public/tables/venue_links/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/embedding/column


GRANT INSERT ON agent_db_app_public.venue_links TO authenticated;

