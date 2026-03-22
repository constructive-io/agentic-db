-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/updated_at/alterations/alt0000001254




ALTER TABLE "agentic_db_app_public".agent_chunks 
    ALTER COLUMN updated_at DROP DEFAULT;



