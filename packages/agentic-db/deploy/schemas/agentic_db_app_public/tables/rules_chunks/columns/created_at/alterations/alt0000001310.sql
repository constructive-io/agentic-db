-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/columns/created_at/alterations/alt0000001310
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".rules_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

