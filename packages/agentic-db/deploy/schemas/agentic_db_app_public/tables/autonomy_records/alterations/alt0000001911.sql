-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/alterations/alt0000001911
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_source_idx


ALTER TABLE "agentic_db_app_public".autonomy_records 
  DISABLE ROW LEVEL SECURITY;

