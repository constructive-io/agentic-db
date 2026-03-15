-- Revert: schemas/agent_db_app_public/tables/deals/columns/currency/alterations/alt0000000886




ALTER TABLE agent_db_app_public.deals 
    ALTER COLUMN currency DROP DEFAULT;



