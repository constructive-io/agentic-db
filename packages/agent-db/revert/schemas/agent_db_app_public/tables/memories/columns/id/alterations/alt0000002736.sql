-- Revert: schemas/agent_db_app_public/tables/memories/columns/id/alterations/alt0000002736


ALTER TABLE "agent_db_app_public".memories 
  ALTER COLUMN id DROP NOT NULL;


