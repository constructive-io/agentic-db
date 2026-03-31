-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/name/alterations/alt0000003493
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.prompts 
  ALTER COLUMN name SET NOT NULL;

