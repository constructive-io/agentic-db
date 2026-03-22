-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/key/alterations/alt0000002290
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/key/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_config 
  ALTER COLUMN key SET NOT NULL;

