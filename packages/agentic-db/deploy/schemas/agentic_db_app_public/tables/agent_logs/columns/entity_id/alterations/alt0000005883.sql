-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/alterations/alt0000005883
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/triggers/agent_tasks_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN entity_id SET NOT NULL;

