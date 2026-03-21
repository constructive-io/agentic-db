-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_importance_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/rules/indexes/rules_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/memories/columns/importance/column


CREATE INDEX memories_importance_idx ON agentic_db_app_public.memories USING BTREE ( importance );

