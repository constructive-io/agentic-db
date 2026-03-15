-- Revert: schemas/agent_db_app_public/tables/files/columns/created_at/alterations/alt0000002832


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN created_at DROP NOT NULL;


