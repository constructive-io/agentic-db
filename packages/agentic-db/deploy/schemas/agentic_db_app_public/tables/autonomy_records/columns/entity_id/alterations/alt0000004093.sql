-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/entity_id/alterations/alt0000004093
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


ALTER TABLE agentic_db_app_public.autonomy_records 
  ALTER COLUMN entity_id SET NOT NULL;

