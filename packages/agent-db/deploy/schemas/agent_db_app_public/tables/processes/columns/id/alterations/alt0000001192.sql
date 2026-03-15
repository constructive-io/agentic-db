-- Deploy: schemas/agent_db_app_public/tables/processes/columns/id/alterations/alt0000001192
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/id/column
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE agent_db_app_public.processes 
  ALTER COLUMN id SET NOT NULL;

