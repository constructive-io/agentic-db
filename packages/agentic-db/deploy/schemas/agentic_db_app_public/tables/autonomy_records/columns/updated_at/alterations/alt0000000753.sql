-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/alterations/alt0000000753
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


COMMENT ON COLUMN agentic_db_app_public.autonomy_records.updated_at IS 'Timestamp when this record was last updated';

