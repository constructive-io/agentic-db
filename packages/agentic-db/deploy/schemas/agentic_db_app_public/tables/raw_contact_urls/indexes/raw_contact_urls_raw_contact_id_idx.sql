-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_raw_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/columns/raw_contact_id/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


CREATE INDEX raw_contact_urls_raw_contact_id_idx ON agentic_db_app_public.raw_contact_urls USING BTREE ( raw_contact_id );

