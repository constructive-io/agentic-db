-- Revert: schemas/agentic_db_app_public/tables/messages/columns/id/alterations/alt0000002334


ALTER TABLE "agentic_db_app_public".messages 
  ALTER COLUMN id DROP NOT NULL;


