-- Revert: schemas/agentic_db_app_public/tables/emails/columns/cc/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN cc RESTRICT;


