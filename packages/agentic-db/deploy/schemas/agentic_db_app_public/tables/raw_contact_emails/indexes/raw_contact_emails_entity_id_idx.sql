-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/indexes/raw_contact_emails_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


CREATE INDEX raw_contact_emails_entity_id_idx ON agentic_db_app_public.raw_contact_emails USING BTREE ( entity_id );

