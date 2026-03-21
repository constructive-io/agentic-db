-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/date/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/currency/alterations/alt0000004472


ALTER TABLE agentic_db_app_public.expenses 
  ADD COLUMN date date;

