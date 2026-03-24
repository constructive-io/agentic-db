-- Revert: schemas/agentic_db_app_public/tables/memories/columns/id/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN id RESTRICT;


