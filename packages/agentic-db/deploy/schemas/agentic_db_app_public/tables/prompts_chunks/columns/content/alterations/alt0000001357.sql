-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/columns/content/alterations/alt0000001357
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  ALTER COLUMN content SET NOT NULL;

