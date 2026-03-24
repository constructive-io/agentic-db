-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


GRANT DELETE ON "agentic_db_app_public".autonomy_records_chunks TO authenticated;

