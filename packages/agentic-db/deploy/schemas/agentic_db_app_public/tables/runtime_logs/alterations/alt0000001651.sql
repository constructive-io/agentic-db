-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/alterations/alt0000001651
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


COMMENT ON TABLE "agentic_db_app_public".runtime_logs IS E'@@searchConfig {}';

