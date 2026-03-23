-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  DROP COLUMN id RESTRICT;


