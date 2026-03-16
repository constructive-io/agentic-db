-- Revert: schemas/agent_db_app_public/tables/memories/columns/created_at/alterations/alt0000001910




ALTER TABLE "agent_db_app_public".memories 
    ALTER COLUMN created_at DROP DEFAULT;



