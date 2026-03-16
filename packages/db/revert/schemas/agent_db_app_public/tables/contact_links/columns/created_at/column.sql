-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/created_at/column


ALTER TABLE "agent_db_app_public".contact_links 
  DROP COLUMN created_at RESTRICT;


