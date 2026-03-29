-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_phones/indexes/raw_contact_phones_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_phones/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/emails_chunks/indexes/emails_chunks_chunk_index_idx


CREATE INDEX raw_contact_phones_entity_id_idx ON agentic_db_app_public.raw_contact_phones USING BTREE ( entity_id );

