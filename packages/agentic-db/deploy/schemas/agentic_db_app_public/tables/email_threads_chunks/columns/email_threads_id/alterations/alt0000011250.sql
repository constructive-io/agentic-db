-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_threads_id/alterations/alt0000011250
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_threads_id/column


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ALTER COLUMN email_threads_id SET NOT NULL;

