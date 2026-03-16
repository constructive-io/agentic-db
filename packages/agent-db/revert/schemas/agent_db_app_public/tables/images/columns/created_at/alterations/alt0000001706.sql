-- Revert: schemas/agent_db_app_public/tables/images/columns/created_at/alterations/alt0000001706




ALTER TABLE "agent_db_app_public".images 
    ALTER COLUMN created_at DROP DEFAULT;



