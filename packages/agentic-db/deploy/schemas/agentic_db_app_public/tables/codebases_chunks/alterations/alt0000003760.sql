-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/alterations/alt0000003760
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


COMMENT ON TABLE agentic_db_app_public.codebases_chunks IS E'@@chunksOf {"parent_fk": "codebases_id", "parent_table": "codebases"}';

