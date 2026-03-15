-- Revert: schemas/agent_db_app_public/tables/deals/columns/created_at/alterations/alt0000002585




ALTER TABLE "agent_db_app_public".deals 
    ALTER COLUMN created_at DROP DEFAULT;



