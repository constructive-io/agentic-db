-- Revert: schemas/agent_db_app_public/tables/lists/columns/updated_at/alterations/alt0000002339


ALTER TABLE "agent_db_app_public".lists 
  ALTER COLUMN updated_at DROP NOT NULL;


