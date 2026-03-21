-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/alterations/alt0000002069
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".goal_chunks 
  DISABLE ROW LEVEL SECURITY;

