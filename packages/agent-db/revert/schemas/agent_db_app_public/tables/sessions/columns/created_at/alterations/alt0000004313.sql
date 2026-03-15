-- Revert: schemas/agent_db_app_public/tables/sessions/columns/created_at/alterations/alt0000004313




ALTER TABLE "agent_db_app_public".sessions 
    ALTER COLUMN created_at DROP DEFAULT;



