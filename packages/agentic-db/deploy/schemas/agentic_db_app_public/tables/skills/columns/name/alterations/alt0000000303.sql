-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/name/alterations/alt0000000303
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.skills 
  ALTER COLUMN name SET NOT NULL;

