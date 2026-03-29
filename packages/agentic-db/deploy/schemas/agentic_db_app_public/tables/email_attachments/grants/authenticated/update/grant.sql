-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


GRANT UPDATE ON agentic_db_app_public.email_attachments TO authenticated;

