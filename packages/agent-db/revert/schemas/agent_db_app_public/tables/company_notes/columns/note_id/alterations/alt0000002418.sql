-- Revert: schemas/agent_db_app_public/tables/company_notes/columns/note_id/alterations/alt0000002418


ALTER TABLE "agent_db_app_public".company_notes 
  ALTER COLUMN note_id DROP NOT NULL;


