-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/summary/column


ALTER TABLE "agentic_db_app_public".interactions 
  DROP COLUMN summary RESTRICT;


