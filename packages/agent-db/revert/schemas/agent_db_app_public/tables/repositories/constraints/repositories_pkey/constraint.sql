-- Revert: schemas/agent_db_app_public/tables/repositories/constraints/repositories_pkey/constraint


ALTER TABLE "agent_db_app_public".repositories 
  DROP CONSTRAINT repositories_pkey;


