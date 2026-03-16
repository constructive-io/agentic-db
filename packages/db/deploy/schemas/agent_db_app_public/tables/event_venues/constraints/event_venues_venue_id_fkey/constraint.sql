-- Deploy: schemas/agent_db_app_public/tables/event_venues/constraints/event_venues_venue_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/event_venues/table
-- requires: schemas/agent_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".event_venues 
  ADD CONSTRAINT event_venues_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES "agent_db_app_public".venues (id) 
    ON DELETE CASCADE;

