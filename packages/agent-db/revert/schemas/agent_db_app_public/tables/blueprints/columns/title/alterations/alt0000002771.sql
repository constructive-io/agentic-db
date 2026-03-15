-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/title/alterations/alt0000002771


ALTER TABLE "agent_db_app_public".blueprints 
  ALTER COLUMN title DROP NOT NULL;


