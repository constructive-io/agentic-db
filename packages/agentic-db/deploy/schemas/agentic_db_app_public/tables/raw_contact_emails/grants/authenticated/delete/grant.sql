-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


GRANT DELETE ON agentic_db_app_public.raw_contact_emails TO authenticated;

