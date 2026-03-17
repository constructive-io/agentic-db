-- Revert: schemas/agentic_db_app_public/tables/messages/columns/to_addresses/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN to_addresses RESTRICT;


