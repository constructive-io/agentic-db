-- Deploy: schemas/agentic_db_app_public/tables/prompts/alterations/alt0000001370
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".prompts 
  DISABLE ROW LEVEL SECURITY;

