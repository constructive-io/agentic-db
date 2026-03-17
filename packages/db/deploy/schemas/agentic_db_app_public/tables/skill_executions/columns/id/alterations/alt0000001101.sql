-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/columns/id/alterations/alt0000001101
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/id/column



ALTER TABLE "agentic_db_app_public".skill_executions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

