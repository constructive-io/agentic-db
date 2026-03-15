-- Revert: schemas/agent_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000004143


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN contact_id DROP NOT NULL;


