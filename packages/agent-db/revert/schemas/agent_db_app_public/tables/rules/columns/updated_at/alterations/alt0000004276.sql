-- Revert: schemas/agent_db_app_public/tables/rules/columns/updated_at/alterations/alt0000004276


ALTER TABLE "agent_db_app_public".rules 
  ALTER COLUMN updated_at DROP NOT NULL;


