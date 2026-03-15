-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/required_count/alterations/alt0000001913




ALTER TABLE "agent_db_status_public".app_level_requirements 
    ALTER COLUMN required_count DROP DEFAULT;



