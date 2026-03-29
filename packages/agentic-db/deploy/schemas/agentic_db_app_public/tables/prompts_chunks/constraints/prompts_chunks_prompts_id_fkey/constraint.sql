-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/constraints/prompts_chunks_prompts_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.prompts_chunks 
  ADD CONSTRAINT prompts_chunks_prompts_id_fkey 
    FOREIGN KEY(prompts_id) 
    REFERENCES agentic_db_app_public.prompts (id) 
    ON DELETE CASCADE;

