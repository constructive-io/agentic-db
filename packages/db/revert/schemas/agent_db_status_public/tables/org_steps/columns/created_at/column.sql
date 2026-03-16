-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/created_at/column


ALTER TABLE "agent_db_status_public".org_steps 
  DROP COLUMN created_at RESTRICT;


