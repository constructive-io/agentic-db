-- Deploy: schemas/agent_db_app_public/tables/event_venues/alterations/alt0000000993
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/event_venues/table
-- requires: schemas/agent_db_app_public/tables/company_events/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.event_venues 
  DISABLE ROW LEVEL SECURITY;

