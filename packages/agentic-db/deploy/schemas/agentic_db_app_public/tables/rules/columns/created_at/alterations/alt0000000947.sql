-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/created_at/alterations/alt0000000947
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.rules 
  ALTER COLUMN created_at SET NOT NULL;

