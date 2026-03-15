-- Revert: schemas/agent_db_app_public/tables/files/columns/updated_at/alterations/alt0000004521




ALTER TABLE "agent_db_app_public".files 
    ALTER COLUMN updated_at DROP DEFAULT;



