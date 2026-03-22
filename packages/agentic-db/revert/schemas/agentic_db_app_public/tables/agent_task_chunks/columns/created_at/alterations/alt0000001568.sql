-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/created_at/alterations/alt0000001568




ALTER TABLE "agentic_db_app_public".agent_task_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



