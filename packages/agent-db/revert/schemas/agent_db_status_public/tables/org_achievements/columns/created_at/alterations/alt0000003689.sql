-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/created_at/alterations/alt0000003689


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN created_at DROP DEFAULT;


