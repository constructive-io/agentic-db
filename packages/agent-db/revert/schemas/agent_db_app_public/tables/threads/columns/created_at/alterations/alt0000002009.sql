-- Revert: schemas/agent_db_app_public/tables/threads/columns/created_at/alterations/alt0000002009


ALTER TABLE "agent_db_app_public".threads 
  ALTER COLUMN created_at DROP NOT NULL;


