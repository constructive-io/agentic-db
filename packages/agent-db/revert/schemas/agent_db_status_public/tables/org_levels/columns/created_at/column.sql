-- Revert: schemas/agent_db_status_public/tables/org_levels/columns/created_at/column


ALTER TABLE "agent_db_status_public".org_levels 
  DROP COLUMN created_at RESTRICT;


