-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/alterations/alt0000000003
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table


COMMENT ON TABLE agentic_db_app_public.documents_chunks IS E'@@chunksOf {"parentFk": "documents_id", "parentTable": "documents"}
@@searchConfig {"weights": {"bm25": 1}, "bm25_field": "content", "bm25_text_config": "english"}';

