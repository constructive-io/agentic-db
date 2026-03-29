-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/embedding_stale/alterations/alt0000001151
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx



ALTER TABLE "agentic_db_app_public".prompts 
    ALTER COLUMN embedding_stale SET DEFAULT true;

