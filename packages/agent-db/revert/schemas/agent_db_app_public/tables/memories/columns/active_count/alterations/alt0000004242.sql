-- Revert: schemas/agent_db_app_public/tables/memories/columns/active_count/alterations/alt0000004242




ALTER TABLE "agent_db_app_public".memories 
    ALTER COLUMN active_count DROP DEFAULT;



