-- Revert: schemas/agentic_db_app_public/tables/memories/columns/content/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN content RESTRICT;


