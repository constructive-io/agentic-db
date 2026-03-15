-- Deploy: schemas/agent_db_status_public/tables/org_achievements/columns/name/alterations/alt0000003731
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table
-- requires: schemas/agent_db_status_public/tables/org_achievements/columns/name/column


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN name SET NOT NULL;

