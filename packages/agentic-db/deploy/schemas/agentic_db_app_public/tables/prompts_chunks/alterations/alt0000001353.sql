-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/alterations/alt0000001353
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  DISABLE ROW LEVEL SECURITY;

