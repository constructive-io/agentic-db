-- Revert: schemas/agent_db_app_public/tables/sessions/columns/compression_count/alterations/alt0000001980




ALTER TABLE "agent_db_app_public".sessions 
    ALTER COLUMN compression_count DROP DEFAULT;



