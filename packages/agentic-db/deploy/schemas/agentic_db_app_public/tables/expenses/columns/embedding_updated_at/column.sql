-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table


ALTER TABLE agentic_db_app_public.expenses 
  ADD COLUMN embedding_updated_at timestamptz;

