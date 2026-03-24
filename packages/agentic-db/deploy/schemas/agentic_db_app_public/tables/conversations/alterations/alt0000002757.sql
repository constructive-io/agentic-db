-- Deploy: schemas/agentic_db_app_public/tables/conversations/alterations/alt0000002757
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE agentic_db_app_public.conversations IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

