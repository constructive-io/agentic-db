-- Revert: schemas/agent_db_app_public/tables/list_items/columns/is_checked/alterations/alt0000001533




ALTER TABLE agent_db_app_public.list_items 
    ALTER COLUMN is_checked DROP DEFAULT;



