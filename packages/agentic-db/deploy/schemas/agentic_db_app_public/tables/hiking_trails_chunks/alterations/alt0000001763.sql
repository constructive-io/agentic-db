-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails_chunks/alterations/alt0000001763
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".hiking_trails_chunks IS E'@@chunksOf {"parent_fk": "hiking_trails_id", "parent_table": "hiking_trails"}';

