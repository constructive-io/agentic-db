-- Deploy: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trip_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/document_chunks/columns/embedding/column


CREATE INDEX trip_chunks_entity_id_idx ON agentic_db_app_public.trip_chunks USING BTREE ( entity_id );

