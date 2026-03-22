-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_state_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/state_type/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_data_gin_idx


CREATE INDEX runtime_states_state_type_idx ON agentic_db_app_public.runtime_states USING BTREE ( state_type );

