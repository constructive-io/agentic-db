-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/updated_at/alterations/alt0000001074
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx



ALTER TABLE "agentic_db_app_public".agents 
    ALTER COLUMN updated_at SET DEFAULT now();

