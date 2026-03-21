-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_memory_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/memory_type/column
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_last_accessed_at_idx


CREATE INDEX memories_memory_type_idx ON agentic_db_app_public.memories USING BTREE ( memory_type );

