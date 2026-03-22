-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/constraints/agent_log_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/triggers/agent_task_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".agent_log_chunks 
  ADD CONSTRAINT agent_log_chunks_pkey PRIMARY KEY (id);

