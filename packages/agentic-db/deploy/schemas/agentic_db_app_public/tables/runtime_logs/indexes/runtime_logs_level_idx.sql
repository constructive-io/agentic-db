-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/indexes/runtime_logs_level_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/level/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_parent_id_idx


CREATE INDEX runtime_logs_level_idx ON agentic_db_app_public.runtime_logs USING BTREE ( level );

