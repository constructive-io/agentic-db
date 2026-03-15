-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".workflow_runs 
  ADD COLUMN updated_at timestamptz;

