-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/created_at/alterations/alt0000001222
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".agents 
  ALTER COLUMN created_at SET NOT NULL;

