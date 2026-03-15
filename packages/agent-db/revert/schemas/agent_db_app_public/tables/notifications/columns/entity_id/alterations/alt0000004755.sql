-- Revert: schemas/agent_db_app_public/tables/notifications/columns/entity_id/alterations/alt0000004755


ALTER TABLE "agent_db_app_public".notifications 
  ALTER COLUMN entity_id DROP NOT NULL;


