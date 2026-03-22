-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/indexes/runtime_logs_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states/triggers/runtime_states_enqueue_embedding_update_tg


CREATE INDEX runtime_logs_entity_id_idx ON agentic_db_app_public.runtime_logs USING BTREE ( entity_id );

