-- Revert: schemas/agent_db_app_public/tables/feedback/columns/updated_at/column


ALTER TABLE "agent_db_app_public".feedback 
  DROP COLUMN updated_at RESTRICT;


