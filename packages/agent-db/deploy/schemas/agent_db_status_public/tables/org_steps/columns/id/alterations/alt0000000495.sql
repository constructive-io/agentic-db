-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/id/alterations/alt0000000495
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/id/column


ALTER TABLE agent_db_status_public.org_steps 
  ALTER COLUMN id SET NOT NULL;

