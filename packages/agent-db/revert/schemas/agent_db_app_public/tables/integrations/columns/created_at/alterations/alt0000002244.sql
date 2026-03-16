-- Revert: schemas/agent_db_app_public/tables/integrations/columns/created_at/alterations/alt0000002244




ALTER TABLE "agent_db_app_public".integrations 
    ALTER COLUMN created_at DROP DEFAULT;



