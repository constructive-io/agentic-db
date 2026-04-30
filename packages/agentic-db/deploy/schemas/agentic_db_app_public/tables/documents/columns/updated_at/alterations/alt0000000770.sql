-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/updated_at/alterations/alt0000000770
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON COLUMN agentic_db_app_public.documents.updated_at IS 'Timestamp when this record was last updated';

