-- Revert: schemas/agent_db_app_public/tables/threads/columns/entity_id/alterations/alt0000004393


ALTER TABLE "agent_db_app_public".threads 
  ALTER COLUMN entity_id DROP NOT NULL;


