-- Deploy: schemas/agentic_db_app_public/tables/places_chunks/indexes/places_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX places_chunks_updated_at_idx ON "agentic_db_app_public".places_chunks ( updated_at );

