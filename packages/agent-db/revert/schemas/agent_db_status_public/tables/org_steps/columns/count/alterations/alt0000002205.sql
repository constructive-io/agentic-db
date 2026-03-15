-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/count/alterations/alt0000002205


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN count DROP NOT NULL;


