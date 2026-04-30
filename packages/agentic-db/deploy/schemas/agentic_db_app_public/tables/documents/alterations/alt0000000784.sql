-- Deploy: schemas/agentic_db_app_public/tables/documents/alterations/alt0000000784
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


COMMENT ON TABLE agentic_db_app_public.documents IS E'@@hasChunks {"chunks_table": "documents_chunks", "embedding_field": "embedding"}
@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

