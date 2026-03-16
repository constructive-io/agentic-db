-- Deploy: schemas/agent_db_app_public/tables/files/alterations/alt0000002162
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE "agent_db_app_public".files 
  DISABLE ROW LEVEL SECURITY;

