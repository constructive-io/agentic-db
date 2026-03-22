-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/progress/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/completed_at/column


ALTER TABLE "agentic_db_app_public".goals 
  ADD COLUMN progress numeric;

