-- Revert: schemas/agent_db_app_public/tables/tags/columns/name/alterations/alt0000004154


ALTER TABLE "agent_db_app_public".tags 
  ALTER COLUMN name DROP NOT NULL;


