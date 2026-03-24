-- Revert: schemas/agentic_db_app_public/tables/messages/columns/meta/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN meta RESTRICT;


