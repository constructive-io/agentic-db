-- Revert: schemas/agentic_db_app_public/tables/contact_notes/columns/id/alterations/alt0000002055


ALTER TABLE "agentic_db_app_public".contact_notes 
  ALTER COLUMN id DROP NOT NULL;


