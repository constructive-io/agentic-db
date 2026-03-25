-- Deploy: schemas/agentic_db_app_public/tables/expenses_chunks/columns/expenses_id/alterations/alt0000001382
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/columns/expenses_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  ALTER COLUMN expenses_id SET NOT NULL;

