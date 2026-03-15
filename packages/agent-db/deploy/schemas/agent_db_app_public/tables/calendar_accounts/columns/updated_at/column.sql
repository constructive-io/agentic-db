-- Deploy: schemas/agent_db_app_public/tables/calendar_accounts/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/table
-- requires: schemas/agent_db_app_public/tables/calendar_accounts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ADD COLUMN updated_at timestamptz;

