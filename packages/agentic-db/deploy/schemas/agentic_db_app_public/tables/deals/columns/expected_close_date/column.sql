-- Deploy: schemas/agentic_db_app_public/tables/deals/columns/expected_close_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table


ALTER TABLE "agentic_db_app_public".deals 
  ADD COLUMN expected_close_date timestamptz;

