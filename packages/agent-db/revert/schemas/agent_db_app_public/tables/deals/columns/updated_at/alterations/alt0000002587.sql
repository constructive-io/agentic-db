-- Revert: schemas/agent_db_app_public/tables/deals/columns/updated_at/alterations/alt0000002587




ALTER TABLE "agent_db_app_public".deals 
    ALTER COLUMN updated_at DROP DEFAULT;



