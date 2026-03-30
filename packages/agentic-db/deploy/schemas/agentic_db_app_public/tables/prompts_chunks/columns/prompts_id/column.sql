-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompts_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  ADD COLUMN prompts_id uuid;

