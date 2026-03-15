-- Revert: schemas/agent_db_app_public/tables/integrations/columns/status/alterations/alt0000004649




ALTER TABLE "agent_db_app_public".integrations 
    ALTER COLUMN status DROP DEFAULT;



