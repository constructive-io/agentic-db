-- Deploy: schemas/agentic_db_app_public/tables/provider_sync_states/columns/id/alterations/alt0000001864
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/columns/id/column



ALTER TABLE "agentic_db_app_public".provider_sync_states 
    ALTER COLUMN id SET DEFAULT uuidv7();

