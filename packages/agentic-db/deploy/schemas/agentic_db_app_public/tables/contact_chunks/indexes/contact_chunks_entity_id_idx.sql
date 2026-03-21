-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/indexes/contact_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/tags/columns/usage_count/alterations/alt0000003767


CREATE INDEX contact_chunks_entity_id_idx ON agentic_db_app_public.contact_chunks USING BTREE ( entity_id );

