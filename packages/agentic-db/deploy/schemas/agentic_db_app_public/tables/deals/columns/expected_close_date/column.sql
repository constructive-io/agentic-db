-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/expected_close_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/currency/alterations/alt0000001730


ALTER TABLE "agentic_db_app_public".deals 
  ADD COLUMN expected_close_date timestamptz;

