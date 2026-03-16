-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/id/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  DROP COLUMN id RESTRICT;


