-- Deploy: schemas/agent_db_app_public/tables/agent_tools/constraints/agent_tools_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agent_tools 
  ADD CONSTRAINT agent_tools_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

