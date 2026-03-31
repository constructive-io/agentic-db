-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/columns/id/alterations/alt0000001311
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".rules_chunks 
  ALTER COLUMN id SET NOT NULL;

