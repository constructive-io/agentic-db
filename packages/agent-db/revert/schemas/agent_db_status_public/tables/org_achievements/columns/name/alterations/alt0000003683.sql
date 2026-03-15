-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/name/alterations/alt0000003683


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN name DROP NOT NULL;


