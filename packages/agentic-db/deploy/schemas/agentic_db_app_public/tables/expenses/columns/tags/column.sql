-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/is_recurring/alterations/alt0000002487


ALTER TABLE "agentic_db_app_public".expenses 
  ADD COLUMN tags citext[];

