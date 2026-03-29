-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_threads_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ADD COLUMN email_threads_id uuid;

