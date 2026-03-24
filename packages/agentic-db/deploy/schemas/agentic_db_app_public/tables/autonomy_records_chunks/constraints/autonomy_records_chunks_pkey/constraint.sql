-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/constraints/autonomy_records_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/provider_sync_states/indexes/provider_sync_states_last_sync_at_idx


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ADD CONSTRAINT autonomy_records_chunks_pkey PRIMARY KEY (id);

