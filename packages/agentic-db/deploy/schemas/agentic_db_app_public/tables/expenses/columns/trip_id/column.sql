-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/trip_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.expenses 
  ADD COLUMN trip_id uuid;

