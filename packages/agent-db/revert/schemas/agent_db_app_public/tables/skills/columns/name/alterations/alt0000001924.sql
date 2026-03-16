-- Revert: schemas/agent_db_app_public/tables/skills/columns/name/alterations/alt0000001924


ALTER TABLE "agent_db_app_public".skills 
  ALTER COLUMN name DROP NOT NULL;


