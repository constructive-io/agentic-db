-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/constraints/agent_tasks_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/triggers/skill_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ADD CONSTRAINT agent_tasks_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agentic_db_app_public".agents (id) 
    ON DELETE CASCADE;

