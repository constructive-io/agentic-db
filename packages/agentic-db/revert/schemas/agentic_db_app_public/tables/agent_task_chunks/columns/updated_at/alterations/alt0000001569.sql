-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/updated_at/alterations/alt0000001569


ALTER TABLE "agentic_db_app_public".agent_task_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


