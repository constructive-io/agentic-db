-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/created_at/alterations/alt0000001464




ALTER TABLE "agentic_db_app_public".conversation_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



