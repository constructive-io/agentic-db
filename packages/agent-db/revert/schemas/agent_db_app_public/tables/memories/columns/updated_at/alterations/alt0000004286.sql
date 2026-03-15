-- Revert: schemas/agent_db_app_public/tables/memories/columns/updated_at/alterations/alt0000004286


ALTER TABLE "agent_db_app_public".memories 
  ALTER COLUMN updated_at DROP NOT NULL;


