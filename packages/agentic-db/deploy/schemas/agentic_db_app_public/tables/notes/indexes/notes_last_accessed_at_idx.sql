-- Deploy: schemas/agentic_db_app_public/tables/notes/indexes/notes_last_accessed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/last_accessed_at/column


CREATE INDEX notes_last_accessed_at_idx ON "agentic_db_app_public".notes USING BTREE ( last_accessed_at );

