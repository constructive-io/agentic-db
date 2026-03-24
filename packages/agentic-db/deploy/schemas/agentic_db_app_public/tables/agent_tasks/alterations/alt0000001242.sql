-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/alterations/alt0000001242
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE "agentic_db_app_public".agent_tasks IS E'@@hasChunks {"chunks_table": "agent_tasks_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

