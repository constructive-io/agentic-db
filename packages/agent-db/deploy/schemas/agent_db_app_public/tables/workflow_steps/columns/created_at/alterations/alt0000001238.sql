-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/columns/created_at/alterations/alt0000001238
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/created_at/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.workflow_steps 
  ALTER COLUMN created_at SET NOT NULL;

