-- Revert: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/created_at/alterations/alt0000001278




ALTER TABLE "agentic_db_app_public".agent_log_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



