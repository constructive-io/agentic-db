-- Revert: schemas/agent_db_app_public/tables/skills/columns/active_count/alterations/alt0000001927




ALTER TABLE "agent_db_app_public".skills 
    ALTER COLUMN active_count DROP DEFAULT;



