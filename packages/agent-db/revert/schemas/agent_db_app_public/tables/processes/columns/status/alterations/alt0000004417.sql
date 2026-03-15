-- Revert: schemas/agent_db_app_public/tables/processes/columns/status/alterations/alt0000004417




ALTER TABLE "agent_db_app_public".processes 
    ALTER COLUMN status DROP DEFAULT;



