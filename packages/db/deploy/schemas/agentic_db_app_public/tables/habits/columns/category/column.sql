-- Deploy: schemas/agentic_db_app_public/tables/habits/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/best_streak/alterations/alt0000001469


ALTER TABLE "agentic_db_app_public".habits 
  ADD COLUMN category text;

