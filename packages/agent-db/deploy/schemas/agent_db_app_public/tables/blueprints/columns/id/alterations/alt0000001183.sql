-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/id/alterations/alt0000001183
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/id/column
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE agent_db_app_public.blueprints 
  ALTER COLUMN id SET NOT NULL;

