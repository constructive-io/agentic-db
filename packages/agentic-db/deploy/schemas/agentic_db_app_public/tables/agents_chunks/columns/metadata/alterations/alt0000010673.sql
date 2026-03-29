-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/columns/metadata/alterations/alt0000010673
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/columns/metadata/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx



ALTER TABLE agentic_db_app_public.agents_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

