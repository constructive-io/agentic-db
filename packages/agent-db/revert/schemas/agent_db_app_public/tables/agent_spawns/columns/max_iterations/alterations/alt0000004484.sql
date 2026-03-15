-- Revert: schemas/agent_db_app_public/tables/agent_spawns/columns/max_iterations/alterations/alt0000004484




ALTER TABLE "agent_db_app_public".agent_spawns 
    ALTER COLUMN max_iterations DROP DEFAULT;



