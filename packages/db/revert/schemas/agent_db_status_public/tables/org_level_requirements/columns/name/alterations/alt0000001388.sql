-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/name/alterations/alt0000001388


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


