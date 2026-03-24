-- Revert: schemas/agentic_db_app_public/tables/emails/columns/id/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN id RESTRICT;


