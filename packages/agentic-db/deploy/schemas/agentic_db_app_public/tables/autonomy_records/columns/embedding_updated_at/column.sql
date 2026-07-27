-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table


ALTER TABLE agentic_db_app_public.autonomy_records 
  ADD COLUMN embedding_updated_at timestamptz;

