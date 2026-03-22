-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_chunks/alterations/alt0000001833
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/embedding_text/column


COMMENT ON TABLE "agentic_db_app_public".autonomy_record_chunks IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

