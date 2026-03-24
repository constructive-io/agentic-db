-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/constraints/autonomy_record_links_autonomy_record_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  ADD CONSTRAINT autonomy_record_links_autonomy_record_id_fkey 
    FOREIGN KEY(autonomy_record_id) 
    REFERENCES "agentic_db_app_public".autonomy_records (id) 
    ON DELETE CASCADE;

