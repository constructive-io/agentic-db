-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/best_streak/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/current_streak/alterations/alt0000001468


ALTER TABLE "agentic_db_app_public".habits 
  ADD COLUMN best_streak int;

