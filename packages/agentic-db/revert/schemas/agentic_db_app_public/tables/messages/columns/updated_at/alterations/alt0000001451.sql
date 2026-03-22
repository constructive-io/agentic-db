-- Revert: schemas/agentic_db_app_public/tables/messages/columns/updated_at/alterations/alt0000001451


ALTER TABLE "agentic_db_app_public".messages 
  ALTER COLUMN updated_at DROP NOT NULL;


