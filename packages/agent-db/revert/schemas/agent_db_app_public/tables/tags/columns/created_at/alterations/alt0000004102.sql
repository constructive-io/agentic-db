-- Revert: schemas/agent_db_app_public/tables/tags/columns/created_at/alterations/alt0000004102


ALTER TABLE "agent_db_app_public".tags 
  ALTER COLUMN created_at DROP NOT NULL;


