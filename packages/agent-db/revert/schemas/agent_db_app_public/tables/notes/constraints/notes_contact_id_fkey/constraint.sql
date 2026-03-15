-- Revert: schemas/agent_db_app_public/tables/notes/constraints/notes_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".notes 
  DROP CONSTRAINT notes_contact_id_fkey;


