-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/constraints/prompts_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.prompts_chunks 
  ADD CONSTRAINT prompts_chunks_pkey PRIMARY KEY (id);

