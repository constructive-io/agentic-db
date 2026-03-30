-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/alterations/alt0000001423
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


COMMENT ON TABLE "agentic_db_app_public".runtime_states_chunks IS E'@@chunksOf {"parent_fk": "runtime_states_id", "parent_table": "runtime_states"}';

