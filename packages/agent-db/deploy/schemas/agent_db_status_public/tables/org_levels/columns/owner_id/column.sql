-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/owner_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table


ALTER TABLE "agent_db_status_public".org_levels 
  ADD COLUMN owner_id uuid;

