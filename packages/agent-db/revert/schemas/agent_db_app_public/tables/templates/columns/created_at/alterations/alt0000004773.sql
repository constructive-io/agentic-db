-- Revert: schemas/agent_db_app_public/tables/templates/columns/created_at/alterations/alt0000004773


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN created_at DROP NOT NULL;


