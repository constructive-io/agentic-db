-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/occurred_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".expenses 
  ADD COLUMN occurred_at timestamptz;

