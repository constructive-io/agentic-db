-- Deploy: schemas/agentic_db_app_public/tables/goals/alterations/alt0000001952
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


COMMENT ON TABLE "agentic_db_app_public".goals IS E'@@searchConfig {}';

