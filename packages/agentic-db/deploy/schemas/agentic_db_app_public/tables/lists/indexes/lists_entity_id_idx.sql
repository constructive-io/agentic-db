-- Deploy: schemas/agentic_db_app_public/tables/lists/indexes/lists_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/lists/columns/entity_id/column


CREATE INDEX lists_entity_id_idx ON agentic_db_app_public.lists USING BTREE ( entity_id );

