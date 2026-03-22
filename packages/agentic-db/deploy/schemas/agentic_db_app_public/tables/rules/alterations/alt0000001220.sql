-- Deploy: schemas/agentic_db_app_public/tables/rules/alterations/alt0000001220
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".rules 
  DISABLE ROW LEVEL SECURITY;

