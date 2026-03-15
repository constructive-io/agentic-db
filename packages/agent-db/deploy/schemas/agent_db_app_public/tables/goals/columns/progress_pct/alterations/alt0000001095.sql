-- Deploy: schemas/agent_db_app_public/tables/goals/columns/progress_pct/alterations/alt0000001095
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/category/column
-- requires: schemas/agent_db_app_public/tables/goals/columns/progress_pct/column



ALTER TABLE agent_db_app_public.goals 
    ALTER COLUMN progress_pct SET DEFAULT 0;

