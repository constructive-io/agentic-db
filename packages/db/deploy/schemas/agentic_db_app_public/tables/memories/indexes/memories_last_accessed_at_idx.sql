-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_last_accessed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/last_accessed_at/column
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_active_count_idx


CREATE INDEX memories_last_accessed_at_idx ON "agentic_db_app_public".memories USING BTREE ( last_accessed_at );

