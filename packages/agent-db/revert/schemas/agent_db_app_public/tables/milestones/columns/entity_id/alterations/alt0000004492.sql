-- Revert: schemas/agent_db_app_public/tables/milestones/columns/entity_id/alterations/alt0000004492


ALTER TABLE "agent_db_app_public".milestones 
  ALTER COLUMN entity_id DROP NOT NULL;


