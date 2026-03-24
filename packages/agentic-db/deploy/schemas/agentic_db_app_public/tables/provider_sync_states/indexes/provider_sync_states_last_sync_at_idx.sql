-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/last_sync_at/column


CREATE INDEX provider_sync_states_last_sync_at_idx ON "agentic_db_app_public".provider_sync_states USING BTREE ( last_sync_at );

