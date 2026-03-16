-- Deploy: schemas/agent_db_app_public/tables/deals/columns/expected_close_date/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/currency/alterations/alt0000001738


ALTER TABLE "agent_db_app_public".deals 
  ADD COLUMN expected_close_date timestamptz;

