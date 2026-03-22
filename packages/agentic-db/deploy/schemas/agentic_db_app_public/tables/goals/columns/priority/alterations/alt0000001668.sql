-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/priority/alterations/alt0000001668
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/priority/column
-- requires: schemas/agentic_db_app_public/tables/goals/columns/status/alterations/alt0000001667



ALTER TABLE "agentic_db_app_public".goals 
    ALTER COLUMN priority SET DEFAULT 0;

