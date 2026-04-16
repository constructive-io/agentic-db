-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/updated_at/alterations/alt0000015491
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.prompts 
  ALTER COLUMN updated_at SET NOT NULL;

