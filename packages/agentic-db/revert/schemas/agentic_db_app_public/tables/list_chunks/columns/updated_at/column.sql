-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".list_chunks 
  DROP COLUMN updated_at RESTRICT;


