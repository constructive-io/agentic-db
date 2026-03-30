-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/chunk_index/alterations/alt0000001959
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".autonomy_records_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

