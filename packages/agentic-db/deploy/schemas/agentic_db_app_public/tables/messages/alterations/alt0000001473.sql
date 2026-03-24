-- Deploy: schemas/agentic_db_app_public/tables/messages/alterations/alt0000001473
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".messages IS E'@@hasChunks {"chunks_table": "messages_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

