-- Deploy: schemas/agentic_db_app_public/tables/projects/alterations/alt0000001482
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


COMMENT ON TABLE "agentic_db_app_public".projects IS E'@@hasChunks {"chunks_table": "projects_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

