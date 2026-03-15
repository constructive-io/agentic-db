-- Deploy: schemas/agent_db_app_public/tables/blueprints/alterations/alt0000001059
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agent_db_app_public.blueprints 
  DISABLE ROW LEVEL SECURITY;

