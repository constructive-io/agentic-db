-- Revert: schemas/agent_db_app_public/tables/contact_events/columns/id/column


ALTER TABLE "agent_db_app_public".contact_events 
  DROP COLUMN id RESTRICT;


