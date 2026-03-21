-- Deploy: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/hash/column
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/entity_id/column


CREATE INDEX chunks_entity_id_idx ON agentic_db_app_public.chunks USING BTREE ( entity_id );

