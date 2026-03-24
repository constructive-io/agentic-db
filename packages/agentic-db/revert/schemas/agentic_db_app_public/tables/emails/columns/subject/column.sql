-- Revert: schemas/agentic_db_app_public/tables/emails/columns/subject/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN subject RESTRICT;


