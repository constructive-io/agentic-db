-- Revert: schemas/agent_db_app_public/tables/integrations/columns/updated_at/column


ALTER TABLE "agent_db_app_public".integrations 
  DROP COLUMN updated_at RESTRICT;


