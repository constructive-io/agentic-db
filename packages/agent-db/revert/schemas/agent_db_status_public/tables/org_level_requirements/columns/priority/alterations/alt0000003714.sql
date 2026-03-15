-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/priority/alterations/alt0000003714


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


