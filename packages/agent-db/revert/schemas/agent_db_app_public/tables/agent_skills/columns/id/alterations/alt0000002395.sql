-- Revert: schemas/agent_db_app_public/tables/agent_skills/columns/id/alterations/alt0000002395


ALTER TABLE "agent_db_app_public".agent_skills 
  ALTER COLUMN id DROP NOT NULL;


