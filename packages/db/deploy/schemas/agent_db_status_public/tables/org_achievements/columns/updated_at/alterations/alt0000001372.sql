-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/updated_at/alterations/alt0000001372
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/updated_at/column


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN updated_at SET DEFAULT now();

