-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/id/alterations/alt0000001375
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/id/column


ALTER TABLE "agent_db_status_public".org_levels 
  ALTER COLUMN id SET NOT NULL;

