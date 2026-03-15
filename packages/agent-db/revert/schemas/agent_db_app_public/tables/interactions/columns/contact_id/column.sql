-- Revert: schemas/agent_db_app_public/tables/interactions/columns/contact_id/column


ALTER TABLE "agent_db_app_public".interactions 
  DROP COLUMN contact_id RESTRICT;


