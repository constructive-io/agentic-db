-- Deploy: schemas/agent_db_app_public/tables/files/alterations/alt0000004562
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE "agent_db_app_public".files 
  DISABLE ROW LEVEL SECURITY;

