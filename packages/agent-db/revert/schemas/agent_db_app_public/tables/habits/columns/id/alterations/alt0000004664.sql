-- Revert: schemas/agent_db_app_public/tables/habits/columns/id/alterations/alt0000004664


ALTER TABLE "agent_db_app_public".habits 
  ALTER COLUMN id DROP NOT NULL;


