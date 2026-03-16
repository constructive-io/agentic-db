-- Revert: schemas/agent_db_app_public/tables/agent_prompts/columns/entity_id/alterations/alt0000002409


ALTER TABLE "agent_db_app_public".agent_prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


