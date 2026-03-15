-- Revert: schemas/agent_db_status_public/tables/org_achievements/constraints/org_achievements_pkey/constraint


ALTER TABLE "agent_db_status_public".org_achievements 
  DROP CONSTRAINT org_achievements_pkey;


