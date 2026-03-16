-- Revert: schemas/agent_db_app_public/tables/ideas/columns/updated_at/alterations/alt0000002297


ALTER TABLE "agent_db_app_public".ideas 
  ALTER COLUMN updated_at DROP NOT NULL;


