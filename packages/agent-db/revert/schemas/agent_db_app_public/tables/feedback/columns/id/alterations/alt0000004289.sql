-- Revert: schemas/agent_db_app_public/tables/feedback/columns/id/alterations/alt0000004289


ALTER TABLE "agent_db_app_public".feedback 
  ALTER COLUMN id DROP NOT NULL;


