-- Deploy: schemas/agentic_db_app_public/tables/lists/alterations/alt0000002637
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column


ALTER TABLE "agentic_db_app_public".lists 
  DISABLE ROW LEVEL SECURITY;

