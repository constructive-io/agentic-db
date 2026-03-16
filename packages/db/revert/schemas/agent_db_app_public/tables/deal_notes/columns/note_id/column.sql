-- Revert: schemas/agent_db_app_public/tables/deal_notes/columns/note_id/column


ALTER TABLE "agent_db_app_public".deal_notes 
  DROP COLUMN note_id RESTRICT;


