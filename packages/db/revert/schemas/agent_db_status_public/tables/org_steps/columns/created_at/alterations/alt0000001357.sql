-- Revert: schemas/agent_db_status_public/tables/org_steps/columns/created_at/alterations/alt0000001357


ALTER TABLE "agent_db_status_public".org_steps 
  ALTER COLUMN created_at DROP DEFAULT;


