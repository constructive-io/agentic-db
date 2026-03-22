-- Deploy: schemas/agentic_db_app_public/tables/rules/constraints/rules_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/triggers/agent_logs_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".rules 
  ADD CONSTRAINT rules_pkey PRIMARY KEY (id);

