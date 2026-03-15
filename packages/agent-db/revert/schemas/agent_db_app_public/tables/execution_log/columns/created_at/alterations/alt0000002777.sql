-- Revert: schemas/agent_db_app_public/tables/execution_log/columns/created_at/alterations/alt0000002777




ALTER TABLE "agent_db_app_public".execution_log 
    ALTER COLUMN created_at DROP DEFAULT;



