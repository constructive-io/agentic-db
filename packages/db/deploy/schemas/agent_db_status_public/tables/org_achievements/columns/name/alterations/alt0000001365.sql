-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/name/alterations/alt0000001365
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/name/column


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN name SET NOT NULL;

