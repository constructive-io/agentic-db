-- Revert: schemas/agentic_db_app_public/tables/messages/columns/content/alterations/alt0000002339


ALTER TABLE "agentic_db_app_public".messages 
  ALTER COLUMN content DROP NOT NULL;


