-- Revert: schemas/agentic_db_app_public/tables/messages/columns/from_address/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN from_address RESTRICT;


