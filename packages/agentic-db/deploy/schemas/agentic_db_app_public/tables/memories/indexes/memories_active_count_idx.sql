-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_active_count_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/active_count/column
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_memory_category_idx


CREATE INDEX memories_active_count_idx ON agentic_db_app_public.memories USING BTREE ( active_count );

