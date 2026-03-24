-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/created_at/column


ALTER TABLE "agentic_db_app_public".interactions 
  DROP COLUMN created_at RESTRICT;


