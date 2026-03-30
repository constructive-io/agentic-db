-- Revert: schemas/agentic_db_app_public/tables/interactions/constraints/interactions_pkey/constraint


ALTER TABLE "agentic_db_app_public".interactions 
  DROP CONSTRAINT interactions_pkey;


