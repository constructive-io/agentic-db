-- Revert: schemas/agent_db_app_public/tables/deal_notes/constraints/deal_notes_note_id_fkey/constraint


ALTER TABLE "agent_db_app_public".deal_notes 
  DROP CONSTRAINT deal_notes_note_id_fkey;


