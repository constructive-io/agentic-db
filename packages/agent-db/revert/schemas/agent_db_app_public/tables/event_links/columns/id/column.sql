-- Revert: schemas/agent_db_app_public/tables/event_links/columns/id/column


ALTER TABLE "agent_db_app_public".event_links 
  DROP COLUMN id RESTRICT;


