-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/id/alterations/alt0000004166


ALTER TABLE "agent_db_app_public".contact_links 
  ALTER COLUMN id DROP NOT NULL;


