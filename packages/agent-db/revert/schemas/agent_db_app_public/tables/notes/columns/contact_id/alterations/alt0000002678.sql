-- Revert: schemas/agent_db_app_public/tables/notes/columns/contact_id/alterations/alt0000002678


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN contact_id DROP NOT NULL;


