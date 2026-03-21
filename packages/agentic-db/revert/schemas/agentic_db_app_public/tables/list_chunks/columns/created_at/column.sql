-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".list_chunks 
  DROP COLUMN created_at RESTRICT;


