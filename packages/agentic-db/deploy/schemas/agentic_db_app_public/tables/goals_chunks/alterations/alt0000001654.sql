-- Deploy: schemas/agentic_db_app_public/tables/goals_chunks/alterations/alt0000001654
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".goals_chunks IS E'@@chunksOf {"parent_fk": "goals_id", "parent_table": "goals"}';

