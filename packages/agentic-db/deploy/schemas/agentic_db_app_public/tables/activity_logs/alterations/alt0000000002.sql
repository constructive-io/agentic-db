-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table


COMMENT ON TABLE agentic_db_app_public.activity_logs IS E'@@searchConfig {"weights": {"bm25": 1}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

