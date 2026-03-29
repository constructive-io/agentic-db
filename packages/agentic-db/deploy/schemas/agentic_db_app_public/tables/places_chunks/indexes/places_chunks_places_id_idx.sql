-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/indexes/places_chunks_places_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places_chunks/columns/places_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX places_chunks_places_id_idx ON agentic_db_app_public.places_chunks USING BTREE ( places_id );

