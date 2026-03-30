-- Revert: schemas/agentic_db_app_public/tables/rules/columns/agent_id/alterations/alt0000001412


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN agent_id DROP NOT NULL;


