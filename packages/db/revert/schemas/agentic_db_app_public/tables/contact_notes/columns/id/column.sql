-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/id/column


ALTER TABLE "agentic_db_app_public".contact_notes 
  DROP COLUMN id RESTRICT;


