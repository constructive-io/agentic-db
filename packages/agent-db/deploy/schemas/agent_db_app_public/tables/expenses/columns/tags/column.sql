-- Deploy: schemas/agent_db_app_public/tables/expenses/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/expenses/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000004579


ALTER TABLE "agent_db_app_public".expenses 
  ADD COLUMN tags citext[];

