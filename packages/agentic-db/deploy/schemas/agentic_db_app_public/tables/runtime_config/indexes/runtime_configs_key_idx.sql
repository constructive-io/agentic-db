-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/indexes/runtime_configs_key_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/key/column
-- requires: schemas/agentic_db_app_public/tables/runtime_events/indexes/runtime_events_status_idx


CREATE INDEX runtime_configs_key_idx ON agentic_db_app_public.runtime_config USING BTREE ( key );

