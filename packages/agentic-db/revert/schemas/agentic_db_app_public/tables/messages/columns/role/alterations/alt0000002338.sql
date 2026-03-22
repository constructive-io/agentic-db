-- Revert: schemas/agentic_db_app_public/tables/messages/columns/role/alterations/alt0000002338


ALTER TABLE "agentic_db_app_public".messages 
  ALTER COLUMN role DROP NOT NULL;


