-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/autonomy_record_id/alterations/alt0000001899
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/autonomy_record_id/column
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  ALTER COLUMN autonomy_record_id SET NOT NULL;

