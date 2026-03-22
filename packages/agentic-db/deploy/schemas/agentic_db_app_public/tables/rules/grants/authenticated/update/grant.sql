-- Deploy: schemas/agentic_db_app_public/tables/rules/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_enqueue_embedding_update_tg


GRANT UPDATE ON "agentic_db_app_public".rules TO authenticated;

