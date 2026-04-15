-- Deploy: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/columns/updated_at/column


CREATE INDEX venues_chunks_updated_at_idx ON "agentic_db_app_public".venues_chunks ( updated_at );

