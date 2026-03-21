-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/progress_pct/alterations/alt0000004002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/goals/columns/progress_pct/column



ALTER TABLE agentic_db_app_public.goals 
    ALTER COLUMN progress_pct SET DEFAULT 0;

