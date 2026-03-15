-- Deploy: schemas/agent_db_status_public/tables/org_levels/columns/updated_at/alterations/alt0000003749
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table
-- requires: schemas/agent_db_status_public/tables/org_levels/columns/updated_at/column


ALTER TABLE "agent_db_status_public".org_levels 
  ALTER COLUMN updated_at SET DEFAULT now();

