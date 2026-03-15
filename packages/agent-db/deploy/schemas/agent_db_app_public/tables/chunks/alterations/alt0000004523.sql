-- Deploy: schemas/agent_db_app_public/tables/chunks/alterations/alt0000004523
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column


ALTER TABLE "agent_db_app_public".chunks 
  DISABLE ROW LEVEL SECURITY;

