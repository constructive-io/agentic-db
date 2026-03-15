-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/updated_at/column


ALTER TABLE "agent_db_status_public".org_achievements 
  DROP COLUMN updated_at RESTRICT;


