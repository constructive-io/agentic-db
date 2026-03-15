-- Deploy: schemas/agent_db_app_public/tables/event_venues/columns/venue_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_venues/table
-- requires: schemas/agent_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.event_venues 
  ADD COLUMN venue_id uuid;

