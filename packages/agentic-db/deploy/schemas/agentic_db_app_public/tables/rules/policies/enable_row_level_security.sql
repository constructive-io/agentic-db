-- Deploy: schemas/agentic_db_app_public/tables/rules/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.rules 
  ENABLE ROW LEVEL SECURITY;

