-- Revert: schemas/agentic_db_app_public/tables/emails/columns/id/alterations/alt0000001421


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN id DROP NOT NULL;


