-- Deploy: schemas/agentic_db_app_public/tables/reminders/alterations/alt0000002605
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/embedding/column


ALTER TABLE "agentic_db_app_public".reminders 
  DISABLE ROW LEVEL SECURITY;

