-- Revert: schemas/agentic_db_app_public/tables/emails/columns/to/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN "to" RESTRICT;


