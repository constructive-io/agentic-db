-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/progress_pct/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/category/column


ALTER TABLE "agentic_db_app_public".goals 
  ADD COLUMN progress_pct int;

