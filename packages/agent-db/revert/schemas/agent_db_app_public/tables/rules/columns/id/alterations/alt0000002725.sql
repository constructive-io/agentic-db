-- Revert: schemas/agent_db_app_public/tables/rules/columns/id/alterations/alt0000002725


ALTER TABLE "agent_db_app_public".rules 
  ALTER COLUMN id DROP NOT NULL;


