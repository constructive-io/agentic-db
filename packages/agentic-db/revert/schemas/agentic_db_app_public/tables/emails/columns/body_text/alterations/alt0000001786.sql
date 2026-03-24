-- Revert: schemas/agentic_db_app_public/tables/emails/columns/body_text/alterations/alt0000001786


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN body_text DROP NOT NULL;


