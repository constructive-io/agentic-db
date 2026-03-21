-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_rule_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/rule_id/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_task_id_idx


CREATE INDEX rule_chunks_rule_id_idx ON agentic_db_app_public.rule_chunks USING BTREE ( rule_id );

