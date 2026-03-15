-- Revert: schemas/agent_db_app_public/tables/list_items/columns/updated_at/alterations/alt0000004701




ALTER TABLE "agent_db_app_public".list_items 
    ALTER COLUMN updated_at DROP DEFAULT;



