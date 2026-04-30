-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/alterations/alt0000000785
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.documents_chunks IS E'@@chunksOf {"parent_fk": "documents_id", "parent_table": "documents"}';

