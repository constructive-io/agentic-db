-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/alterations/alt0000006430
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/columns/embedding_text/column


COMMENT ON TABLE agentic_db_app_public.autonomy_records IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

