-- Deploy: schemas/agent_db_app_public/tables/events/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".events 
  ADD COLUMN updated_at timestamptz;

