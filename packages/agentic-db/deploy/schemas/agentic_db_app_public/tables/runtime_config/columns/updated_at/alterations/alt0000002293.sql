-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/columns/updated_at/alterations/alt0000002293
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".runtime_config 
  ALTER COLUMN updated_at SET NOT NULL;

