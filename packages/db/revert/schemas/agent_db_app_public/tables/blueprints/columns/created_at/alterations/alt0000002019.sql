-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/created_at/alterations/alt0000002019


ALTER TABLE "agent_db_app_public".blueprints 
  ALTER COLUMN created_at DROP NOT NULL;


