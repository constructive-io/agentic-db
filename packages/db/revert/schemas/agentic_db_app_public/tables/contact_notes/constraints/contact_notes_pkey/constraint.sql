-- Revert: schemas/agentic_db_app_public/tables/contact_notes/constraints/contact_notes_pkey/constraint


ALTER TABLE "agentic_db_app_public".contact_notes 
  DROP CONSTRAINT contact_notes_pkey;


