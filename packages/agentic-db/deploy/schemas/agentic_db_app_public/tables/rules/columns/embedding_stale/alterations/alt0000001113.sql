-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/embedding_stale/alterations/alt0000001113
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN embedding_stale SET NOT NULL;

