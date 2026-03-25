-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_source_idx


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  ADD COLUMN entity_id uuid;

