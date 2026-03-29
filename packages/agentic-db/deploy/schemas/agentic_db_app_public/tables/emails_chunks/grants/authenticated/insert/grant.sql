-- Deploy: schemas/agentic_db_app_public/tables/emails_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


GRANT INSERT ON agentic_db_app_public.emails_chunks TO authenticated;

