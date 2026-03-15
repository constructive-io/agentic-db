-- Revert: schemas/agent_db_app_public/tables/sessions/columns/id/alterations/alt0000002754


ALTER TABLE "agent_db_app_public".sessions 
  ALTER COLUMN id DROP NOT NULL;


