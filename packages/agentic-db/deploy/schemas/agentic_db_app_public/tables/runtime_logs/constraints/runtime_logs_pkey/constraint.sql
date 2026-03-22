-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/constraints/runtime_logs_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/triggers/runtime_states_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.runtime_logs 
  ADD CONSTRAINT runtime_logs_pkey PRIMARY KEY (id);

