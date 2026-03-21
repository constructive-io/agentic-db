-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/current_streak/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/target_count/column


ALTER TABLE "agentic_db_app_public".habits 
  ADD COLUMN current_streak int;

