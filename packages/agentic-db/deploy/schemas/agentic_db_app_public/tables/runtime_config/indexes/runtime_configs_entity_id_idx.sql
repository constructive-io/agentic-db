-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/indexes/runtime_configs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/alterations/alt0000006039


CREATE INDEX runtime_configs_entity_id_idx ON agentic_db_app_public.runtime_config USING BTREE ( entity_id );

