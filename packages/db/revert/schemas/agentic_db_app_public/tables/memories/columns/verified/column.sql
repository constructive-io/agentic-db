-- Revert: schemas/agentic_db_app_public/tables/memories/columns/verified/column


ALTER TABLE "agentic_db_app_public".memories 
  DROP COLUMN verified RESTRICT;


