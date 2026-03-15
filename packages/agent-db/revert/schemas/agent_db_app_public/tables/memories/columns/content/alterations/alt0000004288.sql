-- Revert: schemas/agent_db_app_public/tables/memories/columns/content/alterations/alt0000004288


ALTER TABLE "agent_db_app_public".memories 
  ALTER COLUMN content DROP NOT NULL;


