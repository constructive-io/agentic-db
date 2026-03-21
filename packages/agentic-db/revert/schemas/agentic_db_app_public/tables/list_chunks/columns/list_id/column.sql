-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/list_id/column


ALTER TABLE "agentic_db_app_public".list_chunks 
  DROP COLUMN list_id RESTRICT;


