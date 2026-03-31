-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/interactions_id/column


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  DROP COLUMN interactions_id RESTRICT;


