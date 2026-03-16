-- Deploy: schemas/agent_db_app_public/tables/agents/constraints/agents_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE "agent_db_app_public".agents 
  ADD CONSTRAINT agents_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

