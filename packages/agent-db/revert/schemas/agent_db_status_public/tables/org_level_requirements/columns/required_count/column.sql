-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/column


ALTER TABLE "agent_db_status_public".org_level_requirements 
  DROP COLUMN required_count RESTRICT;


