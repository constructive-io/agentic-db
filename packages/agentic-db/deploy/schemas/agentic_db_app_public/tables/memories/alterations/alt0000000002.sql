-- Deploy: schemas/agentic_db_app_public/tables/memories/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table


COMMENT ON TABLE agentic_db_app_public.memories IS E'@@searchConfig {"weights": {"bm25": 1}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

