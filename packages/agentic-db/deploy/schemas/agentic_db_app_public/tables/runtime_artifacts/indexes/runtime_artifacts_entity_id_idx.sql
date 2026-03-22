-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/indexes/runtime_artifacts_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/triggers/runtime_logs_enqueue_embedding_update_tg


CREATE INDEX runtime_artifacts_entity_id_idx ON "agentic_db_app_public".runtime_artifacts USING BTREE ( entity_id );

