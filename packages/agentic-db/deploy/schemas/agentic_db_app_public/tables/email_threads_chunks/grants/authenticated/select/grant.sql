-- Deploy: schemas/agentic_db_app_public/tables/email_threads_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


GRANT SELECT ON agentic_db_app_public.email_threads_chunks TO authenticated;

