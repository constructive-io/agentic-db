-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/date/column


ALTER TABLE "agent_db_app_public".expenses 
  ADD COLUMN category text;

