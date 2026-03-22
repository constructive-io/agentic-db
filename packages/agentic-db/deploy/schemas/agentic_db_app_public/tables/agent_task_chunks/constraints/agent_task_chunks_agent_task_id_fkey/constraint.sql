-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/constraints/agent_task_chunks_agent_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  ADD CONSTRAINT agent_task_chunks_agent_task_id_fkey 
    FOREIGN KEY(agent_task_id) 
    REFERENCES "agentic_db_app_public".agent_tasks (id) 
    ON DELETE CASCADE;

