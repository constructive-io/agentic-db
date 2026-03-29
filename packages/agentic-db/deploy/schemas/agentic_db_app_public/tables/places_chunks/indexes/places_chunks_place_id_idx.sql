-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/indexes/places_chunks_place_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places_chunks/columns/place_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE INDEX places_chunks_place_id_idx ON agentic_db_app_public.places_chunks USING BTREE ( place_id );

