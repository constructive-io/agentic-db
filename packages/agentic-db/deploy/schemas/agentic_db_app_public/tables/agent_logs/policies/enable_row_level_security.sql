-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/triggers/agent_tasks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.agent_logs 
  ENABLE ROW LEVEL SECURITY;

