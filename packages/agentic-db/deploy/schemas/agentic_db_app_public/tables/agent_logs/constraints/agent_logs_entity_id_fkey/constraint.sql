-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/constraints/agent_logs_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/triggers/agent_tasks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.agent_logs 
  ADD CONSTRAINT agent_logs_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

