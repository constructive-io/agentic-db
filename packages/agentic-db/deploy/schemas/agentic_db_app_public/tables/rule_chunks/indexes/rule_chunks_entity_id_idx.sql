-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/embedding/column


CREATE INDEX rule_chunks_entity_id_idx ON agentic_db_app_public.rule_chunks USING BTREE ( entity_id );

