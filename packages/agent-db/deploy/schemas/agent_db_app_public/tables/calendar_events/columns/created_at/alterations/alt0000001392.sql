-- Deploy: schemas/agent_db_app_public/tables/calendar_events/columns/created_at/alterations/alt0000001392
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.calendar_events 
  ALTER COLUMN created_at SET NOT NULL;

