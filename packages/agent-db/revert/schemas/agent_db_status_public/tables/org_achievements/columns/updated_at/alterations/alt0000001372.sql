-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/updated_at/alterations/alt0000001372


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


