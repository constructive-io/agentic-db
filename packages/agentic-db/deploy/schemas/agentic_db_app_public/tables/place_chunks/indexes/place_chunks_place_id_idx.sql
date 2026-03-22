-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/indexes/place_chunks_place_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/place_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX place_chunks_place_id_idx ON "agentic_db_app_public".place_chunks USING BTREE ( place_id );

