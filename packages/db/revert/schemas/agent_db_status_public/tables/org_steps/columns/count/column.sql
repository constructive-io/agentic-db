-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/count/column


ALTER TABLE "agent_db_status_public".org_steps 
  DROP COLUMN count RESTRICT;


