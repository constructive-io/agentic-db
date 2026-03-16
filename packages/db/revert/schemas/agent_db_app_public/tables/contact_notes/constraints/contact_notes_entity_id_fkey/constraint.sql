-- Revert: schemas/agent_db_app_public/tables/contact_notes/constraints/contact_notes_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_notes 
  DROP CONSTRAINT contact_notes_entity_id_fkey;


