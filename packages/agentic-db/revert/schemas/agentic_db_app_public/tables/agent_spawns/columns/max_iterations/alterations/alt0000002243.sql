-- Revert: schemas/agentic_db_app_public/tables/agent_spawns/columns/max_iterations/alterations/alt0000002243




ALTER TABLE "agentic_db_app_public".agent_spawns 
    ALTER COLUMN max_iterations DROP DEFAULT;



