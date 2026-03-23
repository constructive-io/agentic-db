-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/constraints/runtime_logs_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  ADD CONSTRAINT runtime_logs_chunks_pkey PRIMARY KEY (id);

