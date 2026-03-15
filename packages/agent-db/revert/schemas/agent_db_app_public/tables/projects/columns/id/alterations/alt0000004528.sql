-- Revert: schemas/agent_db_app_public/tables/projects/columns/id/alterations/alt0000004528


ALTER TABLE "agent_db_app_public".projects 
  ALTER COLUMN id DROP NOT NULL;


