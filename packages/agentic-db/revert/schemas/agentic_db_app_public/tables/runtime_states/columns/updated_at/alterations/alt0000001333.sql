-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/updated_at/alterations/alt0000001333




ALTER TABLE "agentic_db_app_public".runtime_states 
    ALTER COLUMN updated_at DROP DEFAULT;



