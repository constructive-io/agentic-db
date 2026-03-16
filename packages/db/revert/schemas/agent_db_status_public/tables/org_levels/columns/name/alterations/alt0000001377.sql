-- Revert: schemas/agent_db_status_public/tables/org_levels/columns/name/alterations/alt0000001377


ALTER TABLE "agent_db_status_public".org_levels 
  ALTER COLUMN name DROP NOT NULL;


