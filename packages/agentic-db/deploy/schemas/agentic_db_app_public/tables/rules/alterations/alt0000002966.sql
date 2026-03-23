-- Deploy: schemas/agentic_db_app_public/tables/rules/alterations/alt0000002966
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


COMMENT ON TABLE agentic_db_app_public.rules IS E'@@hasChunks {"chunks_table": "rules_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

