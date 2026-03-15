-- Revert: schemas/agent_db_app_public/tables/interactions/columns/created_at/alterations/alt0000004091


ALTER TABLE "agent_db_app_public".interactions 
  ALTER COLUMN created_at DROP NOT NULL;


