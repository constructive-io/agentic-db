-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/entity_id/alterations/alt0000001994
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  ALTER COLUMN entity_id SET NOT NULL;

