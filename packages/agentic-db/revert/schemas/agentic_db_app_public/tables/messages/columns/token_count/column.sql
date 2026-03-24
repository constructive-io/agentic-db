-- Revert: schemas/agentic_db_app_public/tables/messages/columns/token_count/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN token_count RESTRICT;


