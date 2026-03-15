-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/updated_at/alterations/alt0000003676
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/updated_at/column


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN updated_at SET DEFAULT now();

