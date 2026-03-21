-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".list_chunks 
  DROP COLUMN entity_id RESTRICT;


