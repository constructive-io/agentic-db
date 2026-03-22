-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/constraints/agent_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/triggers/skills_embedding_stale_update_tg


ALTER TABLE agentic_db_app_public.agent_chunks 
  ADD CONSTRAINT agent_chunks_pkey PRIMARY KEY (id);

