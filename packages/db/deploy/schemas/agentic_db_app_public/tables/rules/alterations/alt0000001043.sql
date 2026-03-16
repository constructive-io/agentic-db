-- Deploy: schemas/agentic_db_app_public/tables/rules/alterations/alt0000001043
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".rules 
  DISABLE ROW LEVEL SECURITY;

