-- Revert: schemas/agent_db_app_public/tables/repositories/columns/id/alterations/alt0000002820


ALTER TABLE "agent_db_app_public".repositories 
  ALTER COLUMN id DROP NOT NULL;


