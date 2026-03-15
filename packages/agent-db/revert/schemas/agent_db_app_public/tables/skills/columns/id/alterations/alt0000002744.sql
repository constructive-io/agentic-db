-- Revert: schemas/agent_db_app_public/tables/skills/columns/id/alterations/alt0000002744


ALTER TABLE "agent_db_app_public".skills 
  ALTER COLUMN id DROP NOT NULL;


