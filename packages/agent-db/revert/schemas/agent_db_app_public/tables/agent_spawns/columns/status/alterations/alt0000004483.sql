-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/status/alterations/alt0000004483




ALTER TABLE "agent_db_app_public".agent_spawns 
    ALTER COLUMN status DROP DEFAULT;



