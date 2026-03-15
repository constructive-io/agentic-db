-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/venue_id/alterations/alt0000001008
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/venue_id/column
-- requires: schemas/agent_db_app_public/tables/event_links/constraints/event_links_event_id_fkey/constraint


ALTER TABLE agent_db_app_public.venue_links 
  ALTER COLUMN venue_id SET NOT NULL;

