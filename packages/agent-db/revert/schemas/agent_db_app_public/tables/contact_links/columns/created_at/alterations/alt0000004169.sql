-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/created_at/alterations/alt0000004169


ALTER TABLE "agent_db_app_public".contact_links 
  ALTER COLUMN created_at DROP NOT NULL;


