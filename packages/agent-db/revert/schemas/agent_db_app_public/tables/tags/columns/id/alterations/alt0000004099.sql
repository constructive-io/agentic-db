-- Revert: schemas/agent_db_app_public/tables/tags/columns/id/alterations/alt0000004099


ALTER TABLE "agent_db_app_public".tags 
  ALTER COLUMN id DROP NOT NULL;


