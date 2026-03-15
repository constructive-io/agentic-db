-- Deploy: schemas/agent_db_app_public/tables/venue_links/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/columns/embedding/column


GRANT UPDATE ON "agent_db_app_public".venue_links TO authenticated;

