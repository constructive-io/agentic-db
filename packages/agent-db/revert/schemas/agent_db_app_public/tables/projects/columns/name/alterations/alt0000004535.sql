-- Revert: schemas/agent_db_app_public/tables/projects/columns/name/alterations/alt0000004535


ALTER TABLE "agent_db_app_public".projects 
  ALTER COLUMN name DROP NOT NULL;


