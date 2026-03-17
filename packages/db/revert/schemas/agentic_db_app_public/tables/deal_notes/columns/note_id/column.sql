-- Revert: schemas/agentic_db_app_public/tables/deal_notes/columns/note_id/column


ALTER TABLE "agentic_db_app_public".deal_notes 
  DROP COLUMN note_id RESTRICT;


