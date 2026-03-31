-- Deploy: schemas/agentic_db_app_public/tables/expenses_chunks/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ADD COLUMN updated_at timestamptz;

