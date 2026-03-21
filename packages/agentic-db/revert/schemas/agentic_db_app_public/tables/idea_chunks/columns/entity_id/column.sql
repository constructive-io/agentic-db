-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".idea_chunks 
  DROP COLUMN entity_id RESTRICT;


