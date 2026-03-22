-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/progress/alterations/alt0000006279
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/progress/column
-- requires: schemas/agentic_db_app_public/tables/goals/columns/completed_at/column



ALTER TABLE agentic_db_app_public.goals 
    ALTER COLUMN progress SET DEFAULT 0;

