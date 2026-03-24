-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


CREATE INDEX autonomy_records_entity_id_idx ON "agentic_db_app_public".autonomy_records USING BTREE ( entity_id );

