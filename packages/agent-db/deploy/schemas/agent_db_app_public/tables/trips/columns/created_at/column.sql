-- Deploy: schemas/agent_db_app_public/tables/trips/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".trips 
  ADD COLUMN created_at timestamptz;

