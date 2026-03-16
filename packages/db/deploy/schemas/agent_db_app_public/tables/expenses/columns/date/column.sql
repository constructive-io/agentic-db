-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/date/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/currency/alterations/alt0000002226


ALTER TABLE "agent_db_app_public".expenses 
  ADD COLUMN date date;

