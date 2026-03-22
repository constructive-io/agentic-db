-- Revert: schemas/agentic_db_app_public/tables/messages/columns/content/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN content RESTRICT;


