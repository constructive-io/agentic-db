-- Deploy: schemas/agentic_db_app_public/tables/activity_log/alterations/alt0000002255
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agentic_db_app_public".activity_log 
  DISABLE ROW LEVEL SECURITY;

