-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/status/alterations/alt0000001085


ALTER TABLE "agentic_db_app_public".goals 
  ADD COLUMN category text;

