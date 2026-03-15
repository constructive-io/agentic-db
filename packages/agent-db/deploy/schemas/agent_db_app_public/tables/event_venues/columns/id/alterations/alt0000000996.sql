-- Deploy: schemas/agent_db_app_public/tables/event_venues/columns/id/alterations/alt0000000996
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_venues/table
-- requires: schemas/agent_db_app_public/tables/event_venues/columns/id/column
-- requires: schemas/agent_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.event_venues 
  ALTER COLUMN id SET NOT NULL;

