-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/metadata/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_source_idx


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ADD COLUMN metadata jsonb;

