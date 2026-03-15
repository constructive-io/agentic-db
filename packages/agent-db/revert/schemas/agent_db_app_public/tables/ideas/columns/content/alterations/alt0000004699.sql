-- Revert: schemas/agent_db_app_public/tables/ideas/columns/content/alterations/alt0000004699


ALTER TABLE "agent_db_app_public".ideas 
  ALTER COLUMN content DROP NOT NULL;


