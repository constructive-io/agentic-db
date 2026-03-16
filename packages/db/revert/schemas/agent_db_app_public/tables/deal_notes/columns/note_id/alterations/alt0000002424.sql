-- Revert: schemas/agent_db_app_public/tables/deal_notes/columns/note_id/alterations/alt0000002424


ALTER TABLE "agent_db_app_public".deal_notes 
  ALTER COLUMN note_id DROP NOT NULL;


