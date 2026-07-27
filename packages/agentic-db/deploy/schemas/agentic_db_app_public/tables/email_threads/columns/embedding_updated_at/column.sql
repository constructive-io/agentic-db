-- Deploy: schemas/agentic_db_app_public/tables/email_threads/columns/embedding_updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table


ALTER TABLE agentic_db_app_public.email_threads 
  ADD COLUMN embedding_updated_at timestamptz;

