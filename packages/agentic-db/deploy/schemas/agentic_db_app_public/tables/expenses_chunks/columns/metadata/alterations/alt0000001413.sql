-- Deploy: schemas/agentic_db_app_public/tables/expenses_chunks/columns/metadata/alterations/alt0000001413
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/columns/metadata/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx



ALTER TABLE "agentic_db_app_public".expenses_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

