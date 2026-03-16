-- Revert: schemas/agent_db_status_public/tables/org_levels/columns/name/column


ALTER TABLE "agent_db_status_public".org_levels 
  DROP COLUMN name RESTRICT;


