-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/count/alterations/alt0000002219
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/count/column


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN count SET NOT NULL;

