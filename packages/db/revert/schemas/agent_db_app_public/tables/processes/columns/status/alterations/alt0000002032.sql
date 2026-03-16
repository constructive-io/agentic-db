-- Revert: schemas/agent_db_app_public/tables/processes/columns/status/alterations/alt0000002032




ALTER TABLE "agent_db_app_public".processes 
    ALTER COLUMN status DROP DEFAULT;



