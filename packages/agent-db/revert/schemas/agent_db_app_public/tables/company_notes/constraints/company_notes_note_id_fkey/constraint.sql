-- Revert: schemas/agent_db_app_public/tables/company_notes/constraints/company_notes_note_id_fkey/constraint


ALTER TABLE "agent_db_app_public".company_notes 
  DROP CONSTRAINT company_notes_note_id_fkey;


