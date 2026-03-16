-- Deploy: schemas/agent_db_app_public/tables/recipes/alterations/alt0000002342
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE "agent_db_app_public".recipes 
  DISABLE ROW LEVEL SECURITY;

