-- Deploy: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/alterations/alt0000000620
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/created_at/column


COMMENT ON COLUMN agentic_db_app_public.email_threads.created_at IS 'Timestamp when this record was created';

