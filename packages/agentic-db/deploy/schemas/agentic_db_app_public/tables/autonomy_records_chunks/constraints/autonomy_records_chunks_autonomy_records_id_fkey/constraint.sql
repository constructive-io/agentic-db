-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/constraints/autonomy_records_chunks_autonomy_records_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_source_idx


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ADD CONSTRAINT autonomy_records_chunks_autonomy_records_id_fkey 
    FOREIGN KEY(autonomy_records_id) 
    REFERENCES "agentic_db_app_public".autonomy_records (id) 
    ON DELETE CASCADE;

