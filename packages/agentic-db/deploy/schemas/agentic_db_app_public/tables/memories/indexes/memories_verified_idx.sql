-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_verified_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/verified/column
-- requires: schemas/agentic_db_app_public/tables/memories/indexes/memories_importance_idx


CREATE INDEX memories_verified_idx ON agentic_db_app_public.memories USING BTREE ( verified );

