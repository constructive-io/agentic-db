-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/constraints/prompt_chunks_prompt_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ADD CONSTRAINT prompt_chunks_prompt_id_fkey 
    FOREIGN KEY(prompt_id) 
    REFERENCES "agentic_db_app_public".prompts (id) 
    ON DELETE CASCADE;

