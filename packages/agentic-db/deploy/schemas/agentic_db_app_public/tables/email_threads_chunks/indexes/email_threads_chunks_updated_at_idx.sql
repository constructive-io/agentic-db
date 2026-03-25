-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/indexes/email_threads_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/updated_at/column


CREATE INDEX email_threads_chunks_updated_at_idx ON "agentic_db_app_public".email_threads_chunks ( updated_at );

