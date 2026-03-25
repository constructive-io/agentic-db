-- Deploy: schemas/agentic_db_app_public/tables/email_threads/indexes/email_threads_provider_thread_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/provider_thread_id/column


CREATE INDEX email_threads_provider_thread_id_idx ON "agentic_db_app_public".email_threads USING BTREE ( provider_thread_id );

