-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/alterations/alt0000003048
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE agentic_db_app_public.runtime_logs IS E'@@hasChunks {"chunks_table": "runtime_logs_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

