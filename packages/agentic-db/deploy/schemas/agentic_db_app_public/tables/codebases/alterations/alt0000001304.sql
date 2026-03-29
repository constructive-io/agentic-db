-- Deploy: schemas/agentic_db_app_public/tables/codebases/alterations/alt0000001304
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


COMMENT ON TABLE "agentic_db_app_public".codebases IS E'@@searchConfig {"weights": {"bm25": 1.0}, "bm25_field": "embedding_text", "bm25_text_config": "english"}';

