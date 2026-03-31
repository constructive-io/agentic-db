-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/alterations/alt0000003415
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE agentic_db_app_public.agent_logs IS E'@@hasChunks {"chunks_table": "agent_logs_chunks", "embedding_field": "embedding"}\\n@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

