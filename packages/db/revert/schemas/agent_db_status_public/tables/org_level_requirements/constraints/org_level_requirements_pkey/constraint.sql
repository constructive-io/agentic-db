-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/constraints/org_level_requirements_pkey/constraint


ALTER TABLE "agent_db_status_public".org_level_requirements 
  DROP CONSTRAINT org_level_requirements_pkey;


