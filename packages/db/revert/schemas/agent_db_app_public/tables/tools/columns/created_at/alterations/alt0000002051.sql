-- Revert: schemas/agent_db_app_public/tables/tools/columns/created_at/alterations/alt0000002051


ALTER TABLE "agent_db_app_public".tools 
  ALTER COLUMN created_at DROP NOT NULL;


