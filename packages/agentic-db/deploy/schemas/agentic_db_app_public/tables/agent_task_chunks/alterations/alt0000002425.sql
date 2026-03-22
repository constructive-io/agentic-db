-- Deploy: schemas/agentic_db_app_public/tables/agent_task_chunks/alterations/alt0000002425
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


COMMENT ON TABLE agentic_db_app_public.agent_task_chunks IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

