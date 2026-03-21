-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/id/alterations/alt0000001975
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/embedding/column



ALTER TABLE "agentic_db_app_public".rules 
    ALTER COLUMN id SET DEFAULT uuidv7();

