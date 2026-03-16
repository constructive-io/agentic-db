-- Revert: schemas/agent_db_app_public/tables/contact_notes/columns/id/alterations/alt0000002413


ALTER TABLE "agent_db_app_public".contact_notes 
  ALTER COLUMN id DROP NOT NULL;


