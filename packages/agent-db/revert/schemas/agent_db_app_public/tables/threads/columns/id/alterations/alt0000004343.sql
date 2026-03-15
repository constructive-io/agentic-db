-- Revert: schemas/agent_db_app_public/tables/threads/columns/id/alterations/alt0000004343


ALTER TABLE "agent_db_app_public".threads 
  ALTER COLUMN id DROP NOT NULL;


