-- Deploy: schemas/agent_db_app_public/tables/documents/alterations/alt0000002883
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/expenses/columns/embedding/column


ALTER TABLE "agent_db_app_public".documents 
  DISABLE ROW LEVEL SECURITY;

