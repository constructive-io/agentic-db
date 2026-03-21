-- Revert: schemas/agentic_db_app_public/tables/messages/columns/tags/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN tags RESTRICT;


