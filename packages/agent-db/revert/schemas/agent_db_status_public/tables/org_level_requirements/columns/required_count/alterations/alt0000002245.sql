-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000002245


ALTER TABLE "agent_db_status_public".org_level_requirements 
  ALTER COLUMN required_count DROP NOT NULL;


