-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/id/alterations/alt0000001351
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx



ALTER TABLE "agentic_db_app_public".runtime_logs 
    ALTER COLUMN id SET DEFAULT uuidv7();

