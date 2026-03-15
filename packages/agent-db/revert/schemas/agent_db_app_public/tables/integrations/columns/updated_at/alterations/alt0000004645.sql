-- Revert: schemas/agent_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000004645


ALTER TABLE "agent_db_app_public".integrations 
  ALTER COLUMN updated_at DROP NOT NULL;


