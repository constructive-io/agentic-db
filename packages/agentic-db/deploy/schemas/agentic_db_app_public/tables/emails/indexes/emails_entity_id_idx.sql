-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


CREATE INDEX emails_entity_id_idx ON agentic_db_app_public.emails USING BTREE ( entity_id );

