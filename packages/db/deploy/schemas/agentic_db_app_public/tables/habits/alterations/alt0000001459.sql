-- Deploy: schemas/agentic_db_app_public/tables/habits/alterations/alt0000001459
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE "agentic_db_app_public".habits 
  DISABLE ROW LEVEL SECURITY;

