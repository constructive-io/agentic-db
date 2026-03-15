-- Deploy: schemas/agent_db_app_public/tables/tags/alterations/alt0000000928
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE agent_db_app_public.tags 
  DISABLE ROW LEVEL SECURITY;

