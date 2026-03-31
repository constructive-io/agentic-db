-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/alterations/alt0000003959
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


COMMENT ON TABLE agentic_db_app_public.email_threads_chunks IS E'@@chunksOf {"parent_fk": "email_threads_id", "parent_table": "email_threads"}';

