-- Deploy: schemas/agentic_db_app_public/tables/threads/constraints/threads_parent_thread_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_agent_id_idx


ALTER TABLE agentic_db_app_public.threads 
  ADD CONSTRAINT threads_parent_thread_id_fkey 
    FOREIGN KEY(parent_thread_id) 
    REFERENCES agentic_db_app_public.threads (id) 
    ON DELETE SET NULL;

