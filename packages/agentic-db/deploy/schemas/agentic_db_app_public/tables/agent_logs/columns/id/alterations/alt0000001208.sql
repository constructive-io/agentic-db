-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/id/alterations/alt0000001208
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/triggers/agent_tasks_enqueue_embedding_update_tg



ALTER TABLE "agentic_db_app_public".agent_logs 
    ALTER COLUMN id SET DEFAULT uuidv7();

