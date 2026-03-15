-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/created_at/alterations/alt0000001383
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.calendar_accounts 
  ALTER COLUMN created_at SET NOT NULL;

