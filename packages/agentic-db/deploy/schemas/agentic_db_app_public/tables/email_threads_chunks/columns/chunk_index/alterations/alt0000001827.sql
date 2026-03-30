-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/chunk_index/alterations/alt0000001827
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

