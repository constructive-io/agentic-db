-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_memory_category_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_verified_idx
-- requires: schemas/agentic_db_app_public/tables/memories/columns/memory_category/column


CREATE INDEX memories_memory_category_idx ON agentic_db_app_public.memories USING BTREE ( memory_category );

