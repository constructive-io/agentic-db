-- Revert: schemas/agent_db_app_public/tables/notes/columns/entity_id/alterations/alt0000001762


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN entity_id DROP NOT NULL;


