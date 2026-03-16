-- Revert: schemas/agent_db_app_public/tables/contact_links/columns/contact_id/column


ALTER TABLE "agent_db_app_public".contact_links 
  DROP COLUMN contact_id RESTRICT;


