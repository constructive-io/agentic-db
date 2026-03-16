-- Deploy: schemas/agent_db_app_public/tables/venue_links/constraints/venue_links_venue_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/constraints/event_links_event_id_fkey/constraint


ALTER TABLE "agent_db_app_public".venue_links 
  ADD CONSTRAINT venue_links_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES "agent_db_app_public".venues (id) 
    ON DELETE CASCADE;

