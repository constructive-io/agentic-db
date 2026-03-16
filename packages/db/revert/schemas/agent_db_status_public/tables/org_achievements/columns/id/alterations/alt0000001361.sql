-- Revert: schemas/agent_db_status_public/tables/org_achievements/columns/id/alterations/alt0000001361


ALTER TABLE "agent_db_status_public".org_achievements 
  ALTER COLUMN id DROP NOT NULL;


