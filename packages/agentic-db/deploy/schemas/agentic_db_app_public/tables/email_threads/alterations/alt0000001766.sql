-- Deploy: schemas/agentic_db_app_public/tables/email_threads/alterations/alt0000001766
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".email_threads IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

