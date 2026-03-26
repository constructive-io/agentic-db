-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/columns/content/alterations/alt0000001284
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".rules_chunks 
  ALTER COLUMN content SET NOT NULL;

