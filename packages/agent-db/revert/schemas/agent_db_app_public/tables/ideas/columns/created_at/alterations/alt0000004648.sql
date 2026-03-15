-- Revert: schemas/agent_db_app_public/tables/ideas/columns/created_at/alterations/alt0000004648




ALTER TABLE "agent_db_app_public".ideas 
    ALTER COLUMN created_at DROP DEFAULT;



