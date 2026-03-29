-- Deploy: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/alterations/alt0000003943
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/column


ALTER TABLE agentic_db_app_public.email_threads 
  ALTER COLUMN created_at SET NOT NULL;

