-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/id/column


ALTER TABLE "agent_db_status_public".org_steps 
  DROP COLUMN id RESTRICT;


