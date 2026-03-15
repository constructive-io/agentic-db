-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/id/alterations/alt0000002646
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/id/column
-- requires: schemas/agent_db_app_public/tables/event_links/columns/embedding/column


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN id SET NOT NULL;

