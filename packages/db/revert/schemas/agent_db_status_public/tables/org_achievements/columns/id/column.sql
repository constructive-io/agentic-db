-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/id/column


ALTER TABLE "agent_db_status_public".org_achievements 
  DROP COLUMN id RESTRICT;


