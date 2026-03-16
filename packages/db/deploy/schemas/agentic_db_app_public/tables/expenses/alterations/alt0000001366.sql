-- Deploy: schemas/agentic_db_app_public/tables/expenses/alterations/alt0000001366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agentic_db_app_public".expenses 
  DISABLE ROW LEVEL SECURITY;

