-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/count/alterations/alt0000002219


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN count DROP NOT NULL;


