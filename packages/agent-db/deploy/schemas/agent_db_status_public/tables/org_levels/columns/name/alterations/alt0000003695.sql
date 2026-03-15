-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/name/alterations/alt0000003695
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/name/column


ALTER TABLE "agent_db_status_public".org_levels 
  ALTER COLUMN name SET NOT NULL;

