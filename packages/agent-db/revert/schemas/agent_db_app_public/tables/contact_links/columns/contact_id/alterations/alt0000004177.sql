-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/contact_id/alterations/alt0000004177


ALTER TABLE "agent_db_app_public".contact_links 
  ALTER COLUMN contact_id DROP NOT NULL;


