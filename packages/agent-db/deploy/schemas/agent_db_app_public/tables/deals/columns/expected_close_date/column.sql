-- Deploy: schemas/agent_db_app_public/tables/deals/columns/expected_close_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/currency/alterations/alt0000000886


ALTER TABLE agent_db_app_public.deals 
  ADD COLUMN expected_close_date timestamptz;

