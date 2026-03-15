-- Deploy: schemas/agent_db_app_public/tables/goals/columns/progress_pct/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/category/column


ALTER TABLE "agent_db_app_public".goals 
  ADD COLUMN progress_pct int;

