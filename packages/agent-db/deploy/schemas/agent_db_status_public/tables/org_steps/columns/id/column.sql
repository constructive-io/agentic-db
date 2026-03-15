-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table


ALTER TABLE "agent_db_status_public".org_steps 
  ADD COLUMN id uuid;

