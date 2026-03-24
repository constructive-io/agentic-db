-- Revert: schemas/agentic_db_app_public/tables/memories/columns/created_at/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN created_at RESTRICT;


