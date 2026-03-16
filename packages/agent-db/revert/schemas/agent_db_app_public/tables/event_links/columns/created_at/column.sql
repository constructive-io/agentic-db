-- Revert: schemas/agent_db_app_public/tables/event_links/columns/created_at/column


ALTER TABLE "agent_db_app_public".event_links 
  DROP COLUMN created_at RESTRICT;


