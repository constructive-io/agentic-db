-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/updated_at/alterations/alt0000000961
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx



ALTER TABLE agentic_db_app_public.skills 
    ALTER COLUMN updated_at SET DEFAULT now();

