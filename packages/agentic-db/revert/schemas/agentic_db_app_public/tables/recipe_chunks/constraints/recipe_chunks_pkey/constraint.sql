-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/constraints/recipe_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  DROP CONSTRAINT recipe_chunks_pkey;


