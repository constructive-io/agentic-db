-- Revert: schemas/agentic_db_app_public/tables/email_notes/columns/id/column


ALTER TABLE "agentic_db_app_public".email_notes 
  DROP COLUMN id RESTRICT;


