-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/alterations/alt0000001447
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


COMMENT ON TABLE "agentic_db_app_public".runtime_logs_chunks IS E'@@chunksOf {"parent_fk": "runtime_logs_id", "parent_table": "runtime_logs"}';

